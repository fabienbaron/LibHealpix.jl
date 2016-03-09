depsdir = dirname(@__FILE__)
cd(depsdir)

function build_cfitsio()
    version = "3380"
    tar = "cfitsio$version.tar.gz"
    dir = joinpath(depsdir, "downloads")
    if !isfile(joinpath(dir, tar))
        info("Downloading the CFITSIO library")
        url = "http://heasarc.gsfc.nasa.gov/FTP/software/fitsio/c/$tar"
        isdir(dir) || mkdir(dir)
        download(url, joinpath(dir, tar))
    end
    run(`tar -xzf $(joinpath(dir, tar)) -C $dir`)
    info("Building the CFITSIO library")

end

function build_healpix()
    version = "3.30"
    date = "2015Oct08"
    tar = "Healpix_$(version)_$date.tar.gz"
    dir = joinpath(depsdir, "downloads")
    if !isfile(joinpath(dir, tar))
        info("Downloading the Healpix library")
        url = "http://downloads.sourceforge.net/project/healpix/Healpix_$version/$tar"
        isdir(dir) || mkdir(dir)
        download(url, joinpath(dir, tar))
    end
    run(`tar -xzf $(joinpath(dir, tar)) -C $dir`)
    info("Building the Healpix library")
    run(`./build_healpix.sh`)
end

function build_wrapper()
    info("Building the Healpix wrapper")
    run(`./build_wrapper.sh`)
end

libcfitsio        = Libdl.find_library(["libcfitsio"],        ["usr/lib"])
libchealpix       = Libdl.find_library(["libchealpix"],       ["usr/lib"])
libhealpix_cxx    = Libdl.find_library(["libhealpix_cxx"],    ["usr/lib"])
libhealpixwrapper = Libdl.find_library(["libhealpixwrapper"], ["usr/lib"])

if libcfitsio == ""
    build_cfitsio()
end
if libchealpix == "" || libhealpix_cxx == ""
    build_healpix()
end
build_wrapper()

