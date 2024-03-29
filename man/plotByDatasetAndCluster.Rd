% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Analogizer.R
\name{plotByDatasetAndCluster}
\alias{plotByDatasetAndCluster}
\title{Plot t-SNE coordinates of aligned datasets, colored by dataset and by cluster}
\usage{
plotByDatasetAndCluster(object, title = NULL, pt.size = 0.3,
  text.size = 3, do.shuffle = T, clusters = NULL, axis.labels = NULL,
  return.plots = F, do.legend = T, legend.size = 5)
}
\arguments{
\item{object}{analogizer object. Should call run_tSNE before calling.}

\item{title}{Plot title}

\item{pt.size}{Controls size of points representing cells}

\item{text.size}{Controls size of plot text}

\item{do.shuffle}{Randomly shuffle points so that points from same dataset are not plotted one after the other.}

\item{axis.labels}{Vector of two strings to use as x and y labels respectively}

\item{return.plots}{Return ggplot objects instead of printing directly}
}
\description{
Plot t-SNE coordinates of aligned datasets, colored by dataset and by cluster
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
