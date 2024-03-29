% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Analogizer.R
\name{plot_gene}
\alias{plot_gene}
\title{Plot t-SNE coordinates per dataset, colored by expression of specified gene}
\usage{
plot_gene(object, gene, methylation_indices = NULL, return.plots = F,
  pt.size = 0.1, min.clip = 0, max.clip = 1, points.only = F)
}
\arguments{
\item{object}{analogizer object. Should call run_tSNE before calling.}

\item{gene}{Gene for which to plot relative expression.}

\item{methylation_indices}{Indices of datasets in object with methylation data.}

\item{return.plots}{Return ggplot objects instead of printing directly}

\item{pt.size}{Point size for plots}

\item{points.only}{Remove axes when plotting t-sne coordinates}
}
\description{
Plot t-SNE coordinates per dataset, colored by expression of specified gene
}
\examples{
\dontrun{
Y = matrix(c(1,2,3,4,5,6,7,8,9,10,11,12),nrow=4,byrow=T)
Z = matrix(c(1,2,3,4,5,6,7,6,5,4,3,2),nrow=4,byrow=T)
analogy = Analogizer(list(Y,Z))
analogy@var.genes = c(1,2,3,4)
analogy = scaleNotCenter(analogy)
}
}
