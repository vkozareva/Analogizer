% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Analogizer.R
\name{clusterLouvainJaccard}
\alias{clusterLouvainJaccard}
\title{Perform graph-based clustering (Louvain algorithm) using number of shared nearest neighbors (Jaccard index) as a distance metric.}
\usage{
clusterLouvainJaccard(object, res.param = 0.1, k.param = 30)
}
\arguments{
\item{object}{analogizer object. Should call quantile_norm before calling.}

\item{res.param}{cluster resolution parameter}

\item{k.param}{nearest neighbor parameter for shared nearest neighbor graph construction}

\item{k.scale}{scale parameter for shared nearest neighbor graph construction}
}
\value{
analogizer object with cluster assignments
}
\description{
Perform graph-based clustering (Louvain algorithm) using number of shared nearest neighbors (Jaccard index) as a distance metric.
}
\examples{
\dontrun{
Y = matrix(c(1,2,3,4,5,6,7,8,9,10,11,12),nrow=4,byrow=T)
Z = matrix(c(1,2,3,4,5,6,7,6,5,4,3,2),nrow=4,byrow=T)
analogy = Analogizer(Y,Z)
analogy@var.genes = c(1,2,3,4)
analogy = scaleNotCenter(analogy)
analogy = optimize_als(analogy,k=2,nrep=1)
analogy = quantile_norm(analogy)
analogy = clusterLouvainJaccard(object)
}
}
