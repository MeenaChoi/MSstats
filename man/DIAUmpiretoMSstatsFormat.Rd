% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/converters.R
\name{DIAUmpiretoMSstatsFormat}
\alias{DIAUmpiretoMSstatsFormat}
\title{Import DIA-Umpire files}
\usage{
DIAUmpiretoMSstatsFormat(
  raw.frag,
  raw.pep,
  raw.pro,
  annotation,
  useSelectedFrag = TRUE,
  useSelectedPep = TRUE,
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
\item{raw.frag}{name of FragSummary_date.xls data, which includes feature-level data.}

\item{raw.pep}{name of PeptideSummary_date.xls data, which includes selected fragments information.}

\item{raw.pro}{name of ProteinSummary_date.xls data, which includes selected peptides information.}

\item{annotation}{name of annotation data which includes Condition, BioReplicate, Run information.}

\item{useSelectedFrag}{TRUE will use the selected fragment for each peptide. 'Selected_fragments' column is required.}

\item{useSelectedPep}{TRUE will use the selected peptide for each protein. 'Selected_peptides' column is required.}

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
Import DIA-Umpire files
}
\examples{
diau_frag = system.file("tinytest/raw_data/DIAUmpire/dia_frag.csv", 
                             package = "MSstatsConvert")
diau_pept = system.file("tinytest/raw_data/DIAUmpire/dia_pept.csv", 
                             package = "MSstatsConvert")
diau_prot = system.file("tinytest/raw_data/DIAUmpire/dia_prot.csv", 
                             package = "MSstatsConvert")
annot = system.file("tinytest/annotations/annot_diau.csv", 
                    package = "MSstats")
diau_frag = data.table::fread(diau_frag) 
diau_pept = data.table::fread(diau_pept) 
diau_prot = data.table::fread(diau_prot) 
annot = data.table::fread(annot)
diau_frag = diau_frag[, lapply(.SD, function(x) if (is.integer(x)) as.numeric(x) else x)]
# In case numeric columns are not interpreted correctly

diau_imported = DIAUmpiretoMSstatsFormat(diau_frag, diau_pept, diau_prot, 
                                         annot, use_log_file = FALSE)
head(diau_imported)

}
\author{
Meena Choi, Olga Vitek
}
