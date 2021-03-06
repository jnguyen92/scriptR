% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/assert_df.R
\name{assert_df}
\alias{assert_df}
\alias{assert_between_boundaries}
\alias{assert_between_n_std}
\alias{assert_in}
\alias{assert_col_types}
\alias{assert_none_missing}
\alias{assert_unique}
\alias{assert_dim}
\alias{assert_margins_after}
\title{Assert Functions on Data Frames}
\usage{
assert_between_boundaries(func, dict)

assert_between_n_std(func, dict)

assert_in(func, dict)

assert_col_types(func, dict)

assert_none_missing(func, cols = NULL)

assert_unique(func, cols = NULL)

assert_dim(func, dim)

assert_margins_after(func, margin = "r", condition = "e")
}
\arguments{
\item{func}{function that returns a data.frame}

\item{dict}{list where the names are columns of output, values are arguments for function}

\item{cols}{character vector of columns to check for}

\item{dim}{numeric vector, index 1 for rows, index 2 for columns, leave NA if don't care about a dimension}

\item{margin}{character, margin to query, options c('r', 'c')}

\item{condition}{character, how result DF compares to beginning Df, options c('e', 'g', 'ge', 'l', 'le')}
}
\value{
function
}
\description{
Wrappers to check that the data frame a function returns satisfies current conditions\cr
* assert_between_boundaries() columns are between certain boundaries\cr
* assert_between_n_std() columns are between n standard deviations\cr
* assert_in() columns have values that are in specified lists\cr
* assert_col_types() columns are of specified types\cr
* assert_none_missing() columns are not NA\cr
* assert_unique() columns are unique\cr
* assert_dim() df has dimensions, can leave\cr
* assert_margins_after() df margins satisfies certain conditions over original
}
\examples{
\dontrun{
f <- function(x) x

x <- data.frame(a = runif(3), b = 1:3)
dict <- list(a = 0:1, b = 0:1)
a_bound <- assert_between_boundaries(f, dict = dict)
a_bound(x) # bounds on b are incorrect; will assert error

dict <- list(Species = c("versicolor", "virginica"))
a_in <- assert_in(f, dict = dict)
a_in(iris)

x <- data.frame(x = 1:26, y = letters, z = c(TRUE, FALSE), stringsAsFactors = FALSE)
dict <- list(x = "integer", y = "logical")
a_col <- assert_col_types(f, dict = dict)
a_col(x) # type of y incorrect; will assert error

x <- data.frame(x = 1:10, y = 1:2, z = 101:110)
a_unique <- assert_unique(f, cols = c("x", "y"))
a_unique(x) # y is not unique; will assert error

a_dim <- assert_dim(f, dim = c(NA, 4))
a_dim(iris) # ncol = 5 not 4, will assert error

a_rows <- assert_margins_after(f, margin = 'r', condition = 'l')
a_rows(iris) # rows equal not less than, will assert error
}

}
