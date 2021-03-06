% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils_groupcomparison.R
\name{.fitModelForGroupComparison}
\alias{.fitModelForGroupComparison}
\title{Choose a model type (fixed/mixed effects) and fit it for a single protein}
\usage{
.fitModelForGroupComparison(
  input,
  repeated,
  is_single_subject,
  has_tech_replicates
)
}
\arguments{
\item{input}{data.table of summarized data}

\item{repeated}{if TRUE, experiment consists of repeated measurements}

\item{is_single_subject}{if TRUE, experiment consists of a single subject}

\item{has_tech_replicates}{if TRUE, there are technical replicates}
}
\description{
Choose a model type (fixed/mixed effects) and fit it for a single protein
}
\keyword{internal}
