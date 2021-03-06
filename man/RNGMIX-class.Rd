\name{RNGMIX-class}
\docType{class}
\alias{RNGMIX-class}
\alias{RNGMVNORM-class}
\title{Class \code{"RNGMIX"}}
\description{Object of class \code{RNGMIX}.}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("RNGMIX", ...)}. 
}
\section{Slots}{
\describe{
\item{\code{Dataset.name}:}{
a character vector containing list names of data frames of size \eqn{n \times d} that \emph{d}-dimensional datasets are written in.
}
\item{\code{rseed}:}{
set the random seed to any negative integer value to initialize the sequence. The first file in \code{Dataset.name} corresponds to it.
For each next file the random seed is decremented \eqn{r_{\mathrm{seed}} = r_{\mathrm{seed}} - 1}. The default value is \code{-1}.
}
\item{\code{n}:}{
a vector containing numbers of observations in classes \eqn{n_{l}}, where number of observations \eqn{n = \sum_{l = 1}^{c} n_{l}}.
}
\item{\code{Theta}:}{
a list containing \eqn{c} parametric family types \code{pdfl}. One of \code{"normal"}, \code{"lognormal"}, \code{"Weibull"}, \code{"gamma"}, \code{"binomial"}, \code{"Poisson"}, \code{"Dirac"} or circular \code{"vonMises"} defined for \eqn{0 \leq y_{i} \leq 2 \pi}.
Component parameters \code{theta1.l} follow the parametric family types. One of \eqn{\mu_{il}} for normal, lognormal and von Mises distributions and \eqn{\theta_{il}} for Weibull, gamma, binomial, Poisson and Dirac distributions.
Component parameters \code{theta2.l} follow \code{theta1.l}. One of \eqn{\sigma_{il}} for normal and lognormal distributions, \eqn{\beta_{il}} for Weibull and gamma distributions, \eqn{p_{il}} for binomial distribution and \eqn{\kappa_{il}} for von Mises distribution.
}
\item{\code{Dataset}:}{
a list of data frames of size \eqn{n \times d} containing \emph{d}-dimensional datasets. Each of the \eqn{d} columns represents one random variable. Number of observations \eqn{n} equals the number of rows
in the datasets.
}
\item{\code{Zt}:}{
a factor of true cluster membership.
}
\item{\code{w}:}{
a vector of length \eqn{c} containing component weights \eqn{w_{l}} summing to 1.
}
\item{\code{Variables}:}{
a character vector containing types of variables. One of \code{"continuous"} or \code{"discrete"}.
}
\item{\code{ymin}:}{
a vector of length \eqn{d} containing minimum observations.
}
\item{\code{ymax}:}{
a vector of length \eqn{d} containing maximum observations.
}
}
}
\author{Marko Nagode}
\keyword{classes}
