% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kfold.R
\name{kfold}
\alias{kfold}
\title{Determine k-fold partitions for a given number of samples}
\usage{
kfold(n, k)
}
\arguments{
\item{n}{number of samples}

\item{k}{number of partitions}
}
\value{
a list containing sample numbers in each partition
}
\description{
Determine k-fold partitions for a given number of samples
}
\details{
For specific use in cross validation (see \code{\link{cv.nperm}})
}
\examples{
res <- kfold(100,6)
res
length(res) # partition indices
lapply(res, length) # number of samples in each partition

}
