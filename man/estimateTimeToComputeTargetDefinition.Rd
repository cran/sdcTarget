% Generated by roxygen2 (4.0.2): do not edit by hand
\name{estimateTimeToComputeTargetDefinition}
\alias{estimateTimeToComputeTargetDefinition}
\title{Estimate Time To Complete Calculation of Target Definition}
\usage{
estimateTimeToComputeTargetDefinition(X, cutoff = 1, cores = 1,
  na.recode = TRUE, Hdef = new("sdcHashingDefinitionClass", X = X, na.recode
  = na.recode))
}
\arguments{
\item{X}{A data frame with the data (not necessarily standardised).}

\item{cutoff}{The minimum residual cell size.}

\item{cores}{The number of cores to be used in parallel processing.
The default is linear processing: i.e., \code{core = 1}.}

\item{na.recode}{Whether NA values should be treated as levels.}

\item{Hdef}{A hashing definition (might be generated from a larger set of data).}
}
\description{
This code provides a rough approximation for the number of
  seconds that a calculation of target definition may run.
}
\examples{
set.seed(256)
my.X <- data.frame(matrix(ifelse(runif(500)>.5, TRUE, FALSE), ncol = 5))
estimateTimeToComputeTargetDefinition(X = my.X)
}

