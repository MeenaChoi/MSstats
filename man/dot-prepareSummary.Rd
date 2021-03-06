% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils_summarization_prepare.R
\name{.prepareSummary}
\alias{.prepareSummary}
\title{Prepare feature-level data for summarization}
\usage{
.prepareSummary(input, method, impute, censored_symbol)
}
\arguments{
\item{input}{data.table}

\item{method}{"TMP" / "linear"}

\item{impute}{logical}

\item{censored_symbol}{"0"/"NA"}
}
\value{
data.table
}
\description{
Prepare feature-level data for summarization
}
\keyword{internal}
