% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils_output.R
\name{.finalizeInput}
\alias{.finalizeInput}
\title{Add summary statistics to dataProcess output}
\usage{
.finalizeInput(input, summarized, method, impute, censored_symbol)
}
\arguments{
\item{input}{feature-level data}

\item{summarized}{protein-level data (list)}

\item{method}{summary method}

\item{impute}{if TRUE, censored missing values were imputed}

\item{censored_symbol}{censored missing value indicator}
}
\description{
Add summary statistics to dataProcess output
}
\keyword{internal}
