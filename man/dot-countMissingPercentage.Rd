% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils_groupcomparison.R
\name{.countMissingPercentage}
\alias{.countMissingPercentage}
\title{Count percentage of missing values in given conditions}
\usage{
.countMissingPercentage(
  contrast_matrix,
  summarized,
  result,
  samples_info,
  has_imputed
)
}
\arguments{
\item{contrast_matrix}{contrast matrix}

\item{summarized}{data.table summarized by the dataProcess function}

\item{result}{result of groupComparison}

\item{samples_info}{number of runs per group}

\item{has_imputed}{if TRUE, missing values have been imputed by dataProcess}
}
\description{
Count percentage of missing values in given conditions
}
\keyword{internal}
