% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/microbiome_functions.R
\name{retain.resolve_genus}
\alias{retain.resolve_genus}
\title{Retain resolve agglomeration}
\usage{
retain.resolve_genus(
  physeq,
  dir = NA,
  export,
  mra_prev.ASV = c(0.001, 0.1),
  prev.ASV = 0.5,
  mra_prev.genus = c(1e-04, 0.1),
  prev.genus = 0.5
)
}
\arguments{
\item{physeq}{input phyloseq object containing taxa counts}

\item{dir}{Input filepath as string for storage location of exported files if export = \code{TRUE}.}

\item{export}{\code{TRUE} or \code{FALSE}. If \code{TRUE}, quality control data and additional phyloseq objects will be exported to a specified directory.}

\item{mra_prev.ASV}{threshold for mean relative abundance + prevalence filter. Both minimum values must be met for ASV taxa to be retained. Input numeric vector: \code{c(mra, prev)}. Default is 0.001 mean relative abundance and 0.1 prevalence.}

\item{prev.ASV}{threshold for prevalence filter for ASV to be retained. Input numeric value. Default is 0.5 prevalence.}

\item{mra_prev.genus}{threshold for mean relative abundance + prevalence filter. Both minimum values must be met for agglomerated genus-level taxa to be retained. Input numeric vector: \code{c(mra, prev)}. Default is 0.0001 mean relative abundance and 0.1 prevalence.}

\item{prev.genus}{threshold for prevalence filter for agglomerated genus-level taxa to be retained. Input numeric value. Default is 0.5 prevalence.}
}
\value{
\strong{Phyloseq objects:} \cr
dat_glom: retain-resolved ASV and  genus-level taxa count data. Other taxa is not included. \cr \cr
dat_glom_aldex: retain-resolved ASV and  genus-level taxa count data. Other taxa classification is included such that total abundances are unchanged from original count data after genus-level filtering.
Recommended use for downstream applications where calculations use total abundance (e.g CLR transformation, relative abundance). \cr \cr
dat_glom_rel: retain-resolved ASV and  genus-level taxa relative abundance data. Calculated with dat_glom_aldex. Other taxa has been removed after relative abundance calculation.  \cr \cr
\cr
\strong{Dataframes:} \cr
glom.spID.taxonomt: key for taxonomic level (ASV or genus) of each taxonomic ID (e.g )
}
\description{
Execute retain-resolve agglomeration on ASV count data stored in phyloseq object. \cr \cr
Filter are required for at the ASV and genus-level for:
\enumerate{
\item mean relative abundance + prevalence
\item {prevalence only}
} \cr
Users wishing to set thresholds for only one criteria \emph{(e.g mra + prev \strong{or} prev only)} can set the parameters for the unused filter to 0. Thresholds for ASV and genus-level filtering may need to be optimized for each dataset using summary plots exported when \code{export = TRUE}. \cr \cr
\emph{\strong{Exporting quality control data to file (\code{export = TRUE}) is highly recommend.}} \cr
}
\examples{
output <- retain.resolve_genus(physeq = dat, export = TRUE, dir = "filepath/export_files") #use default thresholds

output <- retain.resolve_genus(physeq = dat, export = TRUE, dir = "~filepath/export_files", mra_prev.ASV = c(0.005, 0.25), prev.ASV = 0.75, mra_prev.genus = c(0.001, 0.1), prev.genus = 0.5) #manually set thresholds for genus and ASV-level filters

}
