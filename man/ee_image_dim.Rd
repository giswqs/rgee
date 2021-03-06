% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ee_as_thumbnail.R
\name{ee_image_dim}
\alias{ee_image_dim}
\title{Dimensions of a Earth Engine Image object}
\usage{
ee_image_dim(image, getsize = TRUE, compression_ratio = 12, quiet = FALSE)
}
\arguments{
\item{image}{Earth Engine Object.}

\item{getsize}{Logical. If TRUE, the size of the object
will be estimated.}

\item{compression_ratio}{Numeric. It is relevant just when
getsize params is TRUE. compression_ratio params is a measurement
of the relative reduction in size of data representation produced
by a data compression algorithm. By default is 12.}

\item{quiet}{logical. Suppress info message}
}
\value{
A list of parameters
}
\description{
Get the approximate number of rows, cols, and size of an
Earth Engine Image.
}
\examples{
\dontrun{
library(rgee)
ee_reattach()
ee_Initialize()

# World SRTM
srtm <- ee$Image("CGIAR/SRTM90_V4")
ee_get_npixel(srtm)

# Landast8
l8 <- ee$Image("LANDSAT/LC08/C01/T1_SR/LC08_038029_20180810")
ee_get_npixel(l8)
}
}
