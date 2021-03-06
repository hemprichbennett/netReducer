% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/removing_and_randomizing.R
\name{removing_and_randomizing}
\alias{removing_and_randomizing}
\title{calculates how much of a network's perceived structure is due to the influence of a given species}
\usage{
removing_and_randomizing(network, index, network_level = "higher",
  sums_to_preserve = "both", datatype = "list", nreplicates = 1000)
}
\arguments{
\item{network}{Your input object}

\item{index}{The network-level metric, from bipartite, which you desire to be calculated}

\item{network_level}{The network level to be removing and randomizing. Currently only 'higher' works}

\item{sums_to_preserve}{preserve sums of columns, rows, or both}

\item{datatype}{is it a matrix of interactions, or a list of matrixes?}

\item{nreplicates}{How many iterations of the randomisation should be done per species removal}
}
\value{
gives a dataset of values when you remove a species from a network, and the values obtained
when randomising this subnetwork
}
\description{
This function removes each species in turn, randomizing the resulting matrix and returning the
desired metric value for the resulting random subnetworks
}
\examples{
mat <- matrix(nrow =10, ncol =10, sample(c(0,1), 100, prob = c(0.6, 0.4), replace = T))
removing_and_randomizing(network = mat, index = 'modularity', datatype = 'matrix')
}
