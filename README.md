
<!-- README.md is generated from README.Rmd. Please edit that file -->

# feh

<!-- badges: start -->

[![R-CMD-check](https://github.com/NelsChua/feh-summoning/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/NelsChua/feh-summoning/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/NelsChua/feh-summoning/branch/main/graph/badge.svg)](https://app.codecov.io/gh/NelsChua/feh-summoning?branch=main)
<!-- badges: end -->

Flap flap flap…flap flap flap…feeeeeeehhhh. Helloooooo summonerssssss.

## Installation

You can install the development version of feh like so:

``` r
# FILL THIS IN! HOW CAN PEOPLE INSTALL YOUR DEV PACKAGE?
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(feh)
## basic example code
set.seed(1)

sesh <- session(matrix(c(15,27,25,0,
                 12,23,17,1,
                 9,18,12,1,
                 13,23,16,2),4,4,byrow=T), 
        baserate=0.03, rateups=0, targetcol="Red", targetrar="5*F")

print(sesh)
#>      Rarity Colour  Target
#> [1,] "4*"   "Grey"  "0"   
#> [2,] "4*"   "Grey"  "0"   
#> [3,] "3*"   "Green" "0"   
#> [4,] "3*"   "Green" "0"   
#> [5,] "4*"   "Red"   "0"
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/v1/examples>.

You can also embed plots, for example:

<img src="http://gamepedia.cursecdn.com/feheroes_gamepedia_en/2/23/Feh_BtlFace_C.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
