% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/estimate population size package.r
\name{distanceSampling}
\alias{distanceSampling}
\title{Fit data of  distance sampling using the best combination of Key and Adjustment}
\usage{
distanceSampling(survey)
}
\arguments{
\item{survey}{A data.frame with columns 'species', 'size', 'distance', 'Region.Label', 'Effort'}
}
\value{

}
\description{
This function ranks the 9 combinations of Key and Adjustment in distance sampling
}
\examples{

 attach(distancesampling)
 AICs = distanceSampling(distancesampling)
 AICs
 ds.kiang <- ds(kiang, key = AICs$Key[2], adjustment = AICs$Adjustment[2], convert.units = 0.001) # truncation=1000
 summary(ds.kiang)
 SM = summary(ds.kiang)
 Average.p = SM[[3]][[14]][1]
 plot(ds.kiang, main="Detection rate\n Tibetan wild ass, half-normal detection function")

}
\author{
Xinhai Li (Xinhai_li_edu@126.com)
}
