% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Analogizer.R
\name{lambdaSuggestion}
\alias{lambdaSuggestion}
\title{Plot alignment and agreement for various test values of lambda. Can be used to select
appropriate value of lambda for factorization of particular dataset.}
\usage{
lambdaSuggestion(object, k, lambda_test = NULL, rand.seed = 1,
  num.cores = 1, thresh = 1e-04, max_iters = 100, k2 = 500,
  ref_dataset = NULL, resolution = 1, agree.method = "PCA", gen.new = F,
  return_results = F)
}
\arguments{
\item{object}{analogizer object. Should normalize, select genes, and scale before calling.}

\item{k}{Number of factors for factorizations}

\item{lambda_test}{Vector of lambda values to test. If not given, use default set spanning 
0.25 to 60}

\item{rand.seed}{Random seed for reproducibility}

\item{num.cores}{Number of cores to use for optimizing factorizations in parallel}

\item{thresh}{Convergence threshold. Convergence occurs when |obj0-obj|/(mean(obj0,obj)) < thresh}

\item{max_iters}{Maximum number of block coordinate descent iterations to perform}

\item{k2}{Horizon parameter for SNF quantile alignment}

\item{ref_dataset}{Reference dataset for SNF quantile alignment}

\item{resolution}{Resolution for SNF quantile alignment}

\item{agree.method}{Reference dr.method for calculating distortion_metric}

\item{gen.new}{Do not use optimizeNewLambda in factorizations. Recommended to use
when looking at only a small range of lambdas (ie. 1:7)}

\item{return_results}{Return matrix of alignment and agreement values}
}
\value{
Matrix of results or plot
}
\description{
Plot alignment and agreement for various test values of lambda. Can be used to select
appropriate value of lambda for factorization of particular dataset.
}
\examples{
\dontrun{
Y = matrix(c(1,2,3,4,5,6,7,8,9,10,11,12),nrow=4,byrow=T)
Z = matrix(c(1,2,3,4,5,6,7,6,5,4,3,2),nrow=4,byrow=T)
analogy = Analogizer(Y,Z)
analogy@var.genes = c(1,2,3,4)
analogy = scaleNotCenter(analogy)
analogy = optimize_als(analogy,k=2,nrep=1)
}
}
