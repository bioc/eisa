.onLoad <- function(lib, pkg) {
}

.onUnload <- function(libpath) {
}

.onAttach <- function(libname, pkgname) {
    msg <- sprintf(
        "Package '%s' is deprecated and will be removed from Bioconductor
         version %s", pkgname, "3.14")
    .Deprecated(msg=paste(strwrap(msg, exdent=2), collapse="\n"))
}
