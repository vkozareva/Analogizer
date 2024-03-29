% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Analogizer.R
\name{quantile_align_SNF}
\alias{quantile_align_SNF}
\title{Builds a shared nearest factor graph to jointly cluster cells, then quantile normalizes corresponding clusters.}
\usage{
quantile_align_SNF(object, knn_k = 20, k2 = 500, prune.thresh = 0.2,
  ref_dataset = NULL, min_cells = 2, quantiles = 50, nstart = 10,
  resolution = 1, dims.use = 1:ncol(object@H[[1]]), dist.use = "CR",
  center = F, small.clust.thresh = 0, id.number = NULL, print.mod = F,
  print_align_summary = T)
}
\arguments{
\item{object}{analogizer object. Should run optimizeALS before calling.}

\item{knn_k}{Number of nearest neighbors for within-dataset knn graph}

\item{k2}{Horizon parameter for shared nearest factor graph. Distances to all but the k2 nearest neighbors are set to 0 (cuts down on memory usage for very large graphs).}

\item{prune.thresh}{Minimum allowed edge weight. Any edges below this are removed (given weight 0)}

\item{ref_dataset}{Name of dataset to use as a "reference" for normalization. By default,
the dataset with the largest number of cells is used.}

\item{min_cells}{Minimum number of cells to consider a cluster shared across datasets.}

\item{quantiles}{Number of quantiles to use for quantile normalization}

\item{nstart}{Number of times to perform Louvain community detection with different random starts}

\item{resolution}{Controls the number of communities detected. Higher resolution=more communities.}

\item{dims.use}{Indices of factors to use for shared nearest factor determination}

\item{dist.use}{Distance metric to use in calculating nearest neighbors}

\item{center}{Centers the data when scaling factors (useful for less sparse modalities like methylation data)}

\item{small.clust.thresh}{Extracts small clusters smaller than this threshold before regularr alignment}

\item{id.number}{Number to use for identifying edge file (when running in parallel)}

\item{print.mod}{Print modularity output from clustering algorithm}

\item{print_align_summary}{Print summary of clusters which did not align normally}
}
\value{
analogizer object
}
\description{
Builds a shared nearest factor graph to jointly cluster cells, then quantile normalizes corresponding clusters.
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
