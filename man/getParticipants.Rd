% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pathway2Graph.R
\name{getParticipants}
\alias{getParticipants}
\title{This function is used internally by pathway2Graph to obtain physical entities participating in an interaction.}
\usage{
getParticipants(pwComponentList, instance, biopaxlevel,
  splitComplexMolecules = FALSE, useIDasNodenames = TRUE)
}
\arguments{
\item{pwComponentList}{List of pathway components}

\item{instance}{Biopax instance id}

\item{biopaxlevel}{integer. Set the biopax level here if you supply a data.table directly.}

\item{splitComplexMolecules}{logical. If TRUE complexes are split up into their components and the annotation of the components is added.}

\item{useIDasNodenames}{logical. If TRUE nodes of the graph are named by their molecule IDs instead of using the NAME property. This can help with badly annotated/formatted databases.}
}
\description{
This function is used internally by pathway2Graph to obtain physical entities participating in an interaction.
}
\author{
Nirupama Benis
}

