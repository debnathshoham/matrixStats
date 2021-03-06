%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  indexByRow.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{indexByRow}
\alias{indexByRow}


\title{Translates matrix indices by rows into indices by columns}

\description{
  Translates matrix indices by rows into indices by columns.
}

\usage{
 indexByRow(dim, idxs=NULL, ...)
}

\arguments{
 \item{dim}{A \code{\link[base]{numeric}} \code{\link[base]{vector}} of length two specifying the length
  of the "template" matrix.}
 \item{idxs}{A \code{\link[base]{vector}} of indices.  If \code{\link[base]{NULL}}, all indices are returned.}
 \item{...}{Not use.}
}

\value{
  Returns an \code{\link[base]{integer}} \code{\link[base]{vector}} of indices.
}

\examples{
dim <- c(5, 4)
X <- matrix(NA_integer_, nrow=dim[1], ncol=dim[2])
Y <- t(X)
idxs <- seq(along=X)

# Assign by columns
X[idxs] <- idxs
print(X)

# Assign by rows
Y[indexByRow(dim(Y), idxs)] <- idxs
print(Y)

stopifnot(X == t(Y))
}

\author{Henrik Bengtsson}



\keyword{iteration}
\keyword{logic}
