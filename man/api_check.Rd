% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/api_check.R
\name{api_check}
\alias{api_check}
\title{Create or update MS Bioscreen data entry?}
\usage{
api_check(sufl_data, endpoint, ignore_colnames = c("first_name", "last_name"),
  base_url = "https://msbioscreen-uat.herokuapp.com/api/v1",
  token = get_token(), verbose_b = TRUE, keep_na = FALSE,
  change = FALSE)
}
\arguments{
\item{sufl_data}{a data frame with 1 row and column names that follow the current SUFL specification (1.0). At minimum, sufl_data
must contain the identifier columns "source_id" and "external_identifier". For attacks, treatments and visits data, sufl_data
must also contain the identifier columns "patient_source_id" and "patient_external_identifier".}

\item{endpoint}{the data endpoint of interest. Possible values are "subjects", "attacks",
"treatments", and "visits".}

\item{ignore_colnames}{the names of the variables whose values should not be updated in the bioscreen. Set to NULL to allow any
variable to be updated in the bioscreen if its value is different in the inputed sufl data set.}

\item{base_url}{the API base URL.}

\item{token}{HTTP authorization token. Default is to get environment variable 'MSBWAITER_TOKEN'.}

\item{verbose_b}{print progress messages as function runs?}

\item{keep_na}{when there is an NA value in the sufl data set that is not NA in the
corresponding bioscreen data entry, should the value in the bioscreen be overwritten to NA? Default
is set to FALSE so that non-missing values in the bioscreen are not overwritten to NA.}

\item{change}{should the function proceed to actually create and update entries in the bioscreen?
Default is set to FALSE.}
}
\description{
\code{api_check} fetches the bioscreen entry with the same identifier values as those in the inputed sufl data set.
\code{api_check} returns "update" or "no action" depending on whether all other values in the inputed sufl data set match
those in the bioscreen data entry. If a corresponding bioscreen data entry does not exist, \code{api_check}
returns "create". When \code{change} is set to TRUE, \code{api_check} will proceed to actually create and update entries.
To check many data entries at once, use \code{api_check_batch}. See ?\code{api_check_batch} for more details.
}
\seealso{
\code{\link{api_check_batch}}, \code{\link{api_get}}, \code{\link{api_create}},
\code{\link{api_update}}, \code{\link{to_json_non_array}}
}

