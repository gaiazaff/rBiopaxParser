% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/modifyBiopax.R
\name{addBiochemicalReaction}
\alias{addBiochemicalReaction}
\title{This function adds a new biochemical reaction to the biopax model.}
\usage{
addBiochemicalReaction(biopax, LEFT = c(), RIGHT = c(), id = NULL)
}
\arguments{
\item{biopax}{A biopax model}

\item{LEFT}{vector of strings. IDs of the physicalEntityParticipant instances that are on the left side of this reaction.}

\item{RIGHT}{vector of strings. IDs of the physicalEntityParticipant instances that are on the right side of this reaction.}

\item{id}{string. ID for the control. If NULL a new ID is generated with prefix "biochemicalReaction".}
}
\value{
Returns the biopax model with the added pathway.
}
\description{
This function adds a new biochemical reaction of class biochemicalReaction to the biopax model. This is a convenience function,
internally the function addBiopaxInstance is called with properties LEFT and RIGHT set.
}
\examples{
biopax = createBiopax(level=2)
biopax = addPhysicalEntity(biopax, class="protein", id="p_id1", NAME="protein1")
biopax = addPhysicalEntityParticipant(biopax, "p_id1", id="PEP_p_id1")
biopax = addPhysicalEntity(biopax, class="protein", id="p_id2", NAME="protein2")
biopax = addPhysicalEntityParticipant(biopax, "p_id2", id="PEP_p_id2")
biopax = addBiochemicalReaction(biopax, LEFT=c("PEP_p_id1"), RIGHT=c("PEP_p_id2"), id="biochem_id_1")
biopax$dt
}
\author{
fkramer
}

