% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/process_measurements.R
\name{process_measurements}
\alias{process_measurements}
\title{Process vertebra measurements}
\usage{
process_measurements(data, pos = 1L, measurements = NULL)
}
\arguments{
\item{data}{a dataset containing a column of vertebra indices and measurements for each vertebra.}

\item{pos}{the name or index of the variable in \code{data} containing the vertebra indices. Default is to use the first column.}

\item{measurements}{the names or indices of the variables in \code{data} containing the relevant vertebra measurements. If unspecified, will use all variables other than that specified in \code{pos}.}
}
\value{
A \code{regions_data} object, which is a data.frame with attributes containing metadata. The vertebra index variable is removed from the data and stored as an attribute.
}
\description{
\code{process_measurements()} initializes the analysis workflow by processing a dataset of vertebra measurements into an object usable by \code{regions}. Such processing includes identifying the vertebra indices and the measurements and filling in missing values.
}
\details{
When missing values are present, \code{process_measurements()} fills them in using the mean of the surrounding non-missing values (i.e., a linear interpolation) if the sequence of missing values is no greater than 2 in length. Otherwise, missing values are left as they are.
}
\examples{
data("alligator")

# Process dataset; vertebra index in "Vertebra" column
alligator_data <- process_measurements(alligator,
                                       pos = "Vertebra")
}
\seealso{
\code{\link[=svdPCO]{svdPCO()}} for computing principal coordinate axes from processed vertebra data.
}
