\name{illustrateCLT}
\alias{illustrateCLT}
\alias{illustrateCLT.tcl}

\title{Functions for Illustrating the CLT}
\description{Functions for generating a sequence of plots of
the density and cdf of the consecutive standardized and centered sums of iid 
r.v. distributed according to a prescribed discrete or absolutely continuous 
distribution compared to the standard normal --- uses the generic function 
\code{plotCLT}.}
%
\usage{illustrateCLT(Distr, len, sleep = 0)
illustrateCLT.tcl(Distr, k, Distrname)
}
\arguments{
  \item{Distr}{object of class \code{"AbscontDistribution"}, 
  \code{"LatticeDistribution"} or \code{"DiscreteDistribution"}: distribution of 
  the summands}
  \item{len}{integer: up to which number of summands plots are generated}
  \item{k}{integer: number of summands for which a plot is to be generated}
  \item{Distrname}{character: name of the summand distribution to be used as 
  title in the plot}
  \item{sleep}{numeric: pause in seconds between subsequent plots }
}
%\details{}
\value{void}
\details{\code{illustrateCLT} generates a sequence of plots, while 
\code{illustrateCLT.tcl} may be used with Tcl/Tk-widgets as in demo 
\code{illustCLT_tcl.R}.}

\seealso{
\code{\link{plotCLT}}
}

\author{Matthias Kohl \email{Matthias.Kohl@stamats.de}\cr
Peter Ruckdeschel \email{peter.ruckdeschel@uni-oldenburg.de}}
\examples{
distroptions("DefaultNrFFTGridPointsExponent" = 13)
illustrateCLT(Distr = Unif(), len = 10)
distroptions("DefaultNrFFTGridPointsExponent" = 12)
illustrateCLT(Distr = Pois(lambda = 2), len = 10)
distroptions("DefaultNrFFTGridPointsExponent" = 13)
illustrateCLT(Distr = Pois(lambda = 2)+Unif(), len = 10)
illustrateCLT.tcl(Distr = Unif(), k = 4, "Unif()")
}

\references{
Kohl, M., Ruckdeschel, P., (2014):
   General purpose convolution algorithm for distributions 
  in S4-Classes by means of FFT. \emph{J. Statist. Softw.}
  \bold{59}(4): 1-25.
}

\keyword{distribution}
\keyword{methods}
\concept{illustration}
\concept{teaching}
\concept{CLT}
\keyword{dynamic}
