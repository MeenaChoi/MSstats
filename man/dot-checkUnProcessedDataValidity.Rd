% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils_checks.R
\name{.checkUnProcessedDataValidity}
\alias{.checkUnProcessedDataValidity}
\title{Check validity of data that were not processed by MSstats converter}
\usage{
.checkUnProcessedDataValidity(input, fix_missing, fill_incomplete)
}
\arguments{
\item{input}{data.table}

\item{fix_missing}{str, optional. Defaults to NULL, which means no action.
If not NULL, must be one of the options: "zero_to_na" or "na_to_zero".
If "zero_to_na", Intensity values equal exactly to 0 will be converted to NA.
If "na_to_zero", missing values will be replaced by zeros.}
}
\description{
Check validity of data that were not processed by MSstats converter
}
\keyword{internal}
