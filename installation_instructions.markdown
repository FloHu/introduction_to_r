---
layout: page
title: Installation instructions
permalink: /installation_instructions/
---

## 1. Install R
You will need a laptop with a working installation of R. Follow the instructions on the [R website](https://cran.r-project.org/)
to install R on your machines. Follow the instructions for your operating system. Linux users: it is usually easiest to install R via one of the package repositories. I recommend you have at least version 4.4.0 installed. If R is already installed on your system you will see the version number when starting R.

Windows users: you may get a warning that "Rtools" is not installed on your system. You do not have to install it for the course, everything should work fine without it. However, you may need it in the future to install certain packages. 

## 2. Install RStudio
After installing R, please install RStudio, you need the Desktop version, open source edition, available [here](https://www.rstudio.com/products/rstudio/). After installing R and RStudio check if your installation is working by starting RStudio. At the top of the console you should get some message like "R version 4.5.0 (...)"

## 3. Install additional packages
After installing R and RStudio please install the tidyverse, which is a collection of R packages, by running this command in the R console:

```r
install.packages("tidyverse")
```
