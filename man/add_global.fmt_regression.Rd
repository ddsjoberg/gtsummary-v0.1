% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_global.R
\name{add_global.fmt_regression}
\alias{add_global.fmt_regression}
\title{Adds the global p-value for a categorical variables in \code{fmt_regression} objects}
\usage{
\method{add_global}{fmt_regression}(x, terms = NULL, keep = FALSE, ...)
}
\arguments{
\item{x}{object with class \code{fmt_regression} from the \code{\link{fmt_regression}} function}

\item{terms}{Character vector of terms for which to add global p-values.  Default
is \code{NULL} which will add global p-values for all categorical variables}

\item{keep}{logical argument whether to keep the individual p-values for the
levels of the categorical variable. Default is \code{FALSE}}

\item{...}{arguments to be passed to \code{\link[car]{Anova}}.  Adding \code{test.statistic = }
can change the type of test (e.g. Likelihood-ratio, Wald, etc.).}
}
\description{
This function uses \code{\link[car]{Anova}} from the \code{car} package with \code{type = "III"} to calculate global p-values.
}
\examples{
lm(marker ~ stage + grade, trial) \%>\% fmt_regression() \%>\% add_global()
}
