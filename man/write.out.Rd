% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/write.out.R
\name{write.out}
\alias{write.out}
\title{Writes Out Data Frames}
\usage{
write.out(dat, file, ...)
}
\arguments{
\item{dat}{data.frame}

\item{file}{name of file; if file extension is csv or tsv saves file as such}

\item{...}{other parameters to pass to writing functions}
}
\description{
Wrapper around write.table and write.csv depending on file extension.
Logs action at the INFO level.
}
