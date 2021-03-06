% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fslhd.R
\name{get.fsl}
\alias{get.fsl}
\alias{get_fsl}
\title{Create command declaring FSLDIR}
\usage{
get.fsl(add_bin = TRUE)

get_fsl(add_bin = TRUE)
}
\arguments{
\item{add_bin}{Should \code{bin} be added to the fsl path? 
All executables are assumed to be in \code{FSLDIR/bin/}.  If not, and 
\code{add_bin = FALSE}, they will be assumed to be in \code{FSLDIR/}.}
}
\value{
NULL if FSL in path, or bash code for setting up FSL DIR
}
\description{
Finds the FSLDIR from system environment or \code{getOption("fsl.path")}
for location of FSL functions
}
\note{
This will use \code{Sys.getenv("FSLDIR")} before \code{getOption("fsl.path")}.
If the directory is not found for FSL in \code{Sys.getenv("FSLDIR")} and 
\code{getOption("fsl.path")}, it will try the default directory \code{/usr/local/fsl}.
}

