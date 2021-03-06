% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_graph_log.R
\name{get_graph_log}
\alias{get_graph_log}
\title{Get the graph log information}
\usage{
get_graph_log(graph)
}
\arguments{
\item{graph}{A graph object of class \code{dgr_graph}.}
}
\value{
A \code{df_tbl} object.
}
\description{
Get a tibble of the graph log, which contains information on the functions
called on the graph that resulted in some transformation of the graph.
}
\examples{
# Create a random graph using the
# `add_gnm_graph()` function and
# delete 2 nodes from the graph
graph <-
  create_graph(
    directed = FALSE) \%>\%
  add_gnm_graph(
    n = 10,
    m = 15,
    set_seed = 23) \%>\%
  delete_node(node = 5) \%>\%
  delete_node(node = 7)

# Get the graph log, which is a
# record of all graph transformations
graph \%>\% get_graph_log()

}
