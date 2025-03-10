\name{MTI-class}
\docType{class}
\alias{MTI-class}
\alias{show,MTI-method}
\alias{id,MTI-method}
\alias{matureMirna,MTI-method}
\alias{mirnaSpecies,MTI-method}
\alias{targetGene,MTI-method}
\alias{targetGeneEntrezid,MTI-method}
\alias{targetGeneSpecies,MTI-method}
\alias{reports,MTI-method}
\alias{pmid,MTI-method}
\alias{experiments,MTI-method}
\alias{supportedBy,MTI-method}
\alias{reportCount,MTI-method}
\alias{id}
\alias{MTI}
\alias{matureMirna}
\alias{mirnaSpecies}
\alias{targetGene}
\alias{targetGeneEntrezid}
\alias{targetGeneSpecies}
\alias{reports}
\alias{reportCount}
\alias{initialize}
\alias{initialize,MTI-method}
\alias{mirna}
\alias{mirna,MTI-method}
\alias{mirnaAccession}
\alias{mirnaAccession,MTI-method}
\alias{mirnaFamily}
\alias{mirnaFamily,MTI-method}
\alias{matureAccession}
\alias{matureAccession,MTI-method}
\alias{matureSequence}
\alias{matureSequence,MTI-method}
\title{Class \dQuote{MTI}, miRNA target gene interaction }
\description{
  The class \dQuote{MTI} describes a miRNA target gene interaction as
  provided by the miRTarBase.
}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("MTI", ...)} or
using the \code{ \link{newMTI} } function (the preferred way).
}
\section{Slots}{
  \describe{
    \item{\code{id}}{The miRTarBase identifier of the interaction.}
    \item{\code{mature_mirna}}{The (mirbase conform) mature miRNA
      identifier (e.g. \dQuote{hsa-mir-24-3p}).}
    \item{\code{species_mirna}}{The species of the miRNA.}
    \item{\code{query}}{Not used yet.}
    \item{\code{target_gene}}{The official gene symbol of the target gene.}
    \item{\code{target_gene_entrezid}}{The NCBI Entrezgene identifier of
    the target gene.}
    \item{\code{species_target_gene}}{The species of the target gene.}
    \item{\code{report}}{A list of \code{\linkS4class{Report}}} objects
    providing the evidence for the miRNA target gene interaction.
  }
}
\section{Methods}{
  \describe{

    \item{\code{experiments( object, ... )}}{Returns the experiments
      that were performed to proof the interaction.}

    \item{\code{id( object, ... )}}{Returns the identifier.}

    \item{\code{matureMirna( object, ... )}}{Returns the name of the mature miRNA.}

    \item{\code{mirnaSpecies( object, ... )}}{Returns the species of the
    miRNA.}

    \item{\code{pmid( object, ... )}}{Returns the PubMed identifier(s) of the
      publications providing evidence of the interaction.}

    \item{\code{reportCount( object, ... )}}{Returns the number of
      publications/reports providing evidence for the interaction.}

    \item{\code{reports( x, ... )}}{Returns the list of
      \code{\linkS4class{Report}} objects.}

    \item{\code{show( object )}}{Print the content of the MTI class.}

    \item{\code{supportedBy( object, ... )}}{Returns the support type
      of the evidence/experiments.}

    \item{\code{targetGene( object, ... )}}{Returns the official symbol
      of the target gene.}

    \item{\code{targetGeneEntrezid( object, ... )}}{Returns the NCBI
      Entrezgene identifier of the target gene.}

    \item{\code{targetGeneSpecies( object, ... )}}{Returns the species
      of the target gene.}


    Retrieve annotations (from the mirtarbase package) for the mature
    miRNA.

    \item{\code{matureAccession( object, ... )}}{Returns the identifier
      (accession) of the mature miRNA from the mirbase.}

    \item{\code{matureSequence( object, ... )}}{Returns the sequence of
      the mature miRNA.}

    \item{\code{mirna( object, ... )}}{Returns the pre-miRNA name
      (i.e. the miRNA id) for the mature miRNA from the mirbase.}

    \item{\code{mirnaAccession( object, ... )}}{Returns the pre-miRNA accession for the mature miRNA from the mirbase.}

    \item{\code{mirnaFamily( object, ... )}}{Returns the miRNA family name for the mature miRNA from the mirbase.}

  }
}
%\references{ ~put references to the literature/web site here ~ }
\author{Johannes Rainer}
\note{
  Instead of directly accessing the slots of the class, the getter methods listed above should be used instead.
}
\seealso{
	\code{\linkS4class{Report}}, \code{\link{getMti}}, \code{getMirbaseForMature}
}
\examples{

## get a MTI from the database.
MTI <- getMti( "MIRT006481", type="mirtarbase_id" )[[1]]

## list the PubMed IDs providing evidence for this interaction
pmid( MTI )
## the mature miRNA name
matureMirna( MTI )

reports( MTI )

## get some annotation information for the mature miRNA of the MTI.
## pre-miRNA name
mirna( MTI )

## pre-miRNA accession
mirnaAccession( MTI )

## miRNA family name
mirnaFamily( MTI )

## mature miRNA accession
matureAccession( MTI )

## the mature miRNA's sequence
matureSequence( MTI )

}
\keyword{classes}

