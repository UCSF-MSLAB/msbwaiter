% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/api_low_level_helpers.R
\name{compare_entries}
\alias{compare_entries}
\title{Compare a data entry with a data set}
\usage{
compare_entries(sufl_data, data_from_app, endpoint = "subjects",
  ignore_colnames = c("first_name", "last_name"), verbose_b = TRUE,
  keep_na = FALSE)
}
\value{
"no action", "create", or "update"
}
\description{
\code{compare_entries} is a helper function for comparing a sufl data entry with data in the bioscreen. See \code{api_check}
and \code{api_check_batch} to see how this helper function is implemented.
}
\seealso{
\code{\link[jsonlite]{api_check}}, \code{\link{api_check_batch}}
}

