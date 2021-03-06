% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils_groupcomparison_contrasts.R
\name{MSstatsContrastMatrix}
\alias{MSstatsContrastMatrix}
\title{Create a contrast matrix for groupComparison function}
\usage{
MSstatsContrastMatrix(contrasts, conditions, labels = NULL)
}
\arguments{
\item{contrasts}{One of the following:
i) list of lists. Each sub-list consists of two vectors that name 
conditions that will be compared. See the details section for more information
ii) matrix. In this case, it's correctness will be checked
iii) "pairwise". In this case, pairwise comparison matrix will be generated
iv) data.frame. In this case, input will be converted to matrix}

\item{conditions}{unique condition labels}

\item{labels}{labels for contrasts (row.names of the contrast matrix)}
}
\description{
Create a contrast matrix for groupComparison function
}
