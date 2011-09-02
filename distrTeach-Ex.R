pkgname <- "distrTeach"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
options(pager = "console")
library('distrTeach')

assign(".oldSearch", search(), pos = 'CheckExEnv')
cleanEx()
nameEx("IllustCLT")
### * IllustCLT

flush(stderr()); flush(stdout())

### Name: illustrateCLT
### Title: Functions for Illustrating the CLT
### Aliases: illustrateCLT illustrateCLT.tcl
### Keywords: distribution methods dynamic

### ** Examples

distroptions("DefaultNrFFTGridPointsExponent" = 13)
illustrateCLT(Distr = Unif(), len = 20)
distroptions("DefaultNrFFTGridPointsExponent" = 12)
illustrateCLT(Distr = Pois(lambda = 2), len = 20)
distroptions("DefaultNrFFTGridPointsExponent" = 13)
illustrateCLT(Distr = Pois(lambda = 2)+Unif(), len = 20)
illustrateCLT.tcl(Distr = Unif(), k = 4, "Unif()")



cleanEx()
nameEx("IllustLLN")
### * IllustLLN

flush(stderr()); flush(stdout())

### Name: illustrateLLN
### Title: Functions for Illustrating the LLN
### Aliases: illustrateLLN
### Keywords: distribution methods dynamic

### ** Examples

illustrateLLN(Distr = Unif())
illustrateLLN(Distr = Pois(lambda = 2))
illustrateLLN(Distr = Pois(lambda = 2)+Unif())
illustrateLLN(Td(3), m = 50, col.Eline = "green", lwd = 2, cex = 0.6, main = 
 "My LLN %C%Q", sub = "generated %D")
illustrateLLN(Td(3), m = 50, CLTorCheb = "Chebyshev") 
illustrateLLN(Td(3), m = 50, CLTorCheb = "Chebyshev", coverage = 0.75) 



cleanEx()
nameEx("plotCLT")
### * plotCLT

flush(stderr()); flush(stdout())

### Name: plotCLT
### Title: Generic Plot Function for Illustrating the CLT
### Aliases: plotCLT plotCLT-methods plotCLT,AbscontDistribution-method
###   plotCLT,DiscreteDistribution-method
### Keywords: internal methods hplot distribution

### ** Examples

illustrateCLT(Distr = Unif(), len = 20)



### * <FOOTER>
###
cat("Time elapsed: ", proc.time() - get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
