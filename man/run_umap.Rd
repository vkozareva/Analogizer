% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Analogizer.R
\name{run_umap}
\alias{run_umap}
\title{Run UMAP on the normalized cell factors to generate a 2D embedding for visualization}
\usage{
run_umap(object, rand.seed = 42, use.raw = F,
  dims.use = 1:ncol(object@H.norm), k = 2, distance = "euclidean",
  n_neighbors = 10, min_dist = 0.1)
}
\arguments{
\item{object}{analogizer object. Should run quantile_norm before calling.}

\item{rand.seed}{Random seed to make results reproducible}

\item{use.raw}{Use scaled data or factorization result?}

\item{dims.use}{Indices of factors to use}

\item{k}{Number of dimensions to reduce to}

\item{distance}{Name of distance metric to use in defining fuzzy simplicial sets}
}
\value{
analogizer object
}
\description{
Run UMAP on the normalized cell factors to generate a 2D embedding for visualization
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
