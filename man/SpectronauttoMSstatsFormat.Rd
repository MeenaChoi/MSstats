% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/converters.R
\name{SpectronauttoMSstatsFormat}
\alias{SpectronauttoMSstatsFormat}
\title{Import Spectronaut files}
\usage{
SpectronauttoMSstatsFormat(
  input,
  annotation = NULL,
  intensity = "PeakArea",
  filter_with_Qvalue = TRUE,
  qvalue_cutoff = 0.01,
  useUniquePeptide = TRUE,
  removeFewMeasurements = TRUE,
  removeProtein_with1Feature = FALSE,
  summaryforMultipleRows = max,
  use_log_file = TRUE,
  append = FALSE,
  verbose = TRUE,
  log_file_path = NULL,
  ...
)
}
\arguments{
\item{input}{name of Spectronaut output, which is long-format. ProteinName, PeptideSequence, PrecursorCharge, FragmentIon, ProductCharge, IsotopeLabelType, Condition, BioReplicate, Run, Intensity, F.ExcludedFromQuantification are required. Rows with F.ExcludedFromQuantification=True will be removed.}

\item{annotation}{name of 'annotation.txt' data which includes Condition, BioReplicate, Run. If annotation is already complete in Spectronaut, use annotation=NULL (default). It will use the annotation information from input.}

\item{intensity}{'PeakArea'(default) uses not normalized peak area. 'NormalizedPeakArea' uses peak area normalized by Spectronaut.}

\item{filter_with_Qvalue}{TRUE(default) will filter out the intensities that have greater than qvalue_cutoff in EG.Qvalue column. Those intensities will be replaced with zero and will be considered as censored missing values for imputation purpose.}

\item{qvalue_cutoff}{Cutoff for EG.Qvalue. default is 0.01.}

\item{useUniquePeptide}{TRUE (default) removes peptides that are assigned for more than one proteins. 
We assume to use unique peptide for each protein.}

\item{removeFewMeasurements}{TRUE (default) will remove the features that have 1 or 2 measurements across runs.}

\item{removeProtein_with1Feature}{TRUE will remove the proteins which have only 1 feature, which is the combination of peptide, precursor charge, fragment and charge. FALSE is default.}

\item{summaryforMultipleRows}{max(default) or sum - when there are multiple measurements for certain feature and certain run, use highest or sum of multiple intensities.}

\item{use_log_file}{logical. If TRUE, information about data processing
will be saved to a file.}

\item{append}{logical. If TRUE, information about data processing will be added
to an existing log file.}

\item{verbose}{logical. If TRUE, information about data processing wil be printed
to the console.}

\item{log_file_path}{character. Path to a file to which information about 
data processing will be saved. 
If not provided, such a file will be created automatically.
If `append = TRUE`, has to be a valid path to a file.}

\item{...}{additional parameters to `data.table::fread`.}
}
\value{
data.frame in the MSstats required format.
}
\description{
Import Spectronaut files
}
\examples{
spectronaut_raw = system.file("tinytest/raw_data/Spectronaut/spectronaut_input.csv",
                              package = "MSstatsConvert")
spectronaut_raw = data.table::fread(spectronaut_raw)
spectronaut_imported = SpectronauttoMSstatsFormat(spectronaut_raw, use_log_file = FALSE)
head(spectronaut_imported)

}
\author{
Meena Choi, Olga Vitek
}
