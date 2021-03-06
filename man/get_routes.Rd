% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_routes.R
\name{get_routes}
\alias{get_routes}
\title{Get information about routes}
\usage{
get_routes(nstations, dep_day, dep_time = seq(0, 1 - 1/nstations, length.out =
  nstations - 1))
}
\arguments{
\item{nstations}{Integer; Number of stations of the train.}

\item{dep_day}{Integer; Which day the train departs. See details.}

\item{dep_time}{Numeric vector; At which time the train departs from individual stations. See details.}
}
\description{
Generate a matrix containing all necessary information about the routes
}
\details{
The tickets begin to purchase at midnight before day 1.
The train departs at day \code{dep_day}.
If \code{dep_time} == 0 the train departs at the midnight before \code{dep_day}-th day.
If \code{dep_time} == 1 the train departs at the midnight after \code{dep_day}-th day.
All values should be between 0 and 1.
Length of vector \code{dep_time} is \code{nstation - 1}.
}
\examples{
nstations <- 4
dep_day <- 60
routes <- get_routes(nstations, dep_day)
}

