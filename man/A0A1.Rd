% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/A0A1.R
\name{A0A1}
\alias{A0A1}
\title{Recurrence classification for a pair of samples}
\usage{
A0A1(
  smpx,
  smpy,
  nx,
  ny,
  afreq,
  pdetx,
  pdety,
  rbg,
  pfalse = 0.001,
  iminor = c(1, 1),
  aflog = NULL,
  lgam = NULL,
  lnum = NULL
)
}
\arguments{
\item{smpx, smpy}{lists containing genetic data for D0 and DR samples. Each
element of the list corresponds to a locus.}

\item{nx, ny}{complexity of infection for D0 and DR samples.}

\item{afreq}{a list of population allele frequencies. Each element of the
list corresponds to a locus.}

\item{pdetx, pdety}{detection probabilities for D0 and DR samples. If a single
value for a sample is provided, the same probability for each locus is
assumed.}

\item{rbg}{background relatedness. Pairwise infection relatedness level in
population.}

\item{pfalse}{adjustment for possible false positive alleles allowing for
missingness when the number of unique alleles at a locus is greater than or
equal to COI. Usually a small value.}

\item{iminor}{a vector of length 2 indicating indices of minor strains in two
samples. 1 refers to a possibly recrudescent strain, 0 to unknown (any
strain can be minor).}

\item{aflog}{log of population allele frequencies.}

\item{lgam, lnum}{\code{lgamma(1:x)} and \code{log(1:x)} where \code{x} is
large enough to accommodate \code{nx, ny}.}
}
\value{
A named list of length 2 containing:
  * Recurrence classification (1 for recrudescence, 0 for no recrudescence);
  * \ifelse{html}{\out{log(A<sub>0</sub>), log(A<sub>1</sub>)}}{\eqn{log(A_0), log(A_1)}}
}
\description{
Classifies a recurrent sample as a recrudescence or a completely
  new infection. Provides optional conditional probabilities
  \ifelse{html}{\out{A<sub>0</sub>}}{\eqn{A_0}},
  \ifelse{html}{\out{A<sub>1</sub>}}{\eqn{A_1}} for downstream analysis.
}
