% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_overall.R
\name{add_overall}
\alias{add_overall}
\title{Adds a column with overall summary statistics to an existing \code{fmt_table1} object where descriptive
statistics are split by a variable}
\usage{
add_overall(x, last = FALSE)
}
\arguments{
\item{x}{object with class \code{fmt_table1} from the \code{\link{fmt_table1}} function}

\item{last}{logical indicator to include overall  column last. Default is \code{FALSE}}
}
\description{
The function assumes the DEFAULT headers are in use. Only modify header rows
after Overall column has been added.
}
\examples{
trial \%>\% fmt_table1(by = "trt") \%>\% add_overall()
}
