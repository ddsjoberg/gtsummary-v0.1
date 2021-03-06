% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/modify_header.R
\name{modify_header.fmt_uni_regression}
\alias{modify_header.fmt_uni_regression}
\title{Modifies header rows for existing \code{fmt_uni_regression} objects.}
\usage{
\method{modify_header}{fmt_uni_regression}(x, label = NULL, N = NULL,
  est = NULL, ci = NULL, pvalue = NULL, ...)
}
\arguments{
\item{x}{\code{fmt_uni_regression} object}

\item{label}{string vector including text to appear above the label column}

\item{N}{string vector including text to appear above the N column}

\item{est}{string vector including text to appear above the estimate/coefficient column}

\item{ci}{string vector including text to appear above the confidence interval column}

\item{pvalue}{string vector including text to appear above the p-value column}

\item{...}{further arguments passed to or from other methods}
}
\description{
If the top row of a header column is blank,
you may experience printing issues when using \code{knitr}::\code{\link[knitr]{kable}}
}
\examples{
fmt_uni_regression(
  trial,
  method = "glm",
  y = "response",
  method.args = list(family = binomial),
  exponentiate = TRUE
) \%>\%
  modify_header(label = "Characteristic")
}
