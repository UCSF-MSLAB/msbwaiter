# msbwaiter
R package for interacting with the msbioscreen API.

```R 
install.packages("devtools")
devtools::install_github("UCSF-MSLAB/msbwaiter", build_vignettes = TRUE) 
library(msbwaiter)

# view the vignette for this package
utils::browseVignettes("msbwaiter")

```

If not set, you will be prompted for the authentication token at first use of the package. The token can be preset using the environment variable `MSBWAITER_TOKEN`. Read the vignette for more details.
