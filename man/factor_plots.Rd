% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Analogizer.R
\name{factor_plots}
\alias{factor_plots}
\title{Plot comparison scatter plots of unaligned and aligned factor loadings}
\usage{
factor_plots(object, num_genes = 10, cells.highlight = NULL,
  plot.tsne = F)
}
\arguments{
\item{object}{analogizer object. Should call quantile_align_SNF before calling.}

\item{num_genes}{Number of genes to display for each factor}

\item{cells.highlight}{Names of specific cells to highlight in plot (black)}

\item{plot.tsne}{Plot t-SNE coordinates for each factor}
}
\description{
Plot comparison scatter plots of unaligned and aligned factor loadings
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
