% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/logging.R
\name{logging}
\alias{logging}
\alias{logging.log}
\alias{logging.debug}
\alias{logging.info}
\alias{logging.warning}
\alias{logging.error}
\alias{logging.critical}
\alias{logging.exception}
\title{Python Style Logging Functions}
\usage{
logging.log(msg, level = "INFO")

logging.debug(msg)

logging.info(msg)

logging.warning(msg)

logging.error(msg)

logging.critical(msg)

logging.exception(msg, e)
}
\arguments{
\item{msg}{object to log}

\item{level}{logging level c("DEBUG", INFO", "WARNING", "ERROR", "CRITICAL")}

\item{e}{exception}
}
\description{
* logging.log() \cr
* logging.debug() \cr
* logging.info() \cr
* logging.warning() \cr
* logging.error() \cr
* logging.critical() \cr
* logging.exception()
}
