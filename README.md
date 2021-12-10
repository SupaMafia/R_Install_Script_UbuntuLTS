Need Ubuntu LTS, tested on 20.04 LTS //
You need to add r-cran repo first

#configuring C toolchain for linux
sudo add-apt-repository ppa:marutter/rrutter4.0
sudo add-apt-repository ppa:c2d4u.team/c2d4u4.0+
sudo apt update
sudo apt install r-cran-rstan

#create or edit a configuration file for the C++ toolchain
dotR <- file.path(Sys.getenv("HOME"), ".R")
if (!file.exists(dotR)) dir.create(dotR)
M <- file.path(dotR, "Makevars")
if (!file.exists(M)) file.create(M)
cat("\nCXX14FLAGS=-O3 -march=native -mtune=native -fPIC",
    "CXX14=g++", # or clang++ but you may need a version postfix
    file = M, sep = "\n", append = TRUE)

#install V8
sudo apt install libnode-dev
sudo apt install gcc-10 g++-10
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-10 100 --slave /usr/bin/g++ g++ /usr/bin/g++-10 --slave /usr/bin/gcov gcov /usr/bin/gcov-10
sudo update-alternatives --config gcc

Sys.setenv(DOWNLOAD_STATIC_LIBV8 = 1)
install.packages("V8")

#rstan
remove.packages("rstan")
if (file.exists(".RData")) file.remove(".RData")

sudo apt install r-cran-shiny r-cran-igraph r-cran-colourpicker r-cran-threejs
 
Sys.setenv(DOWNLOAD_STATIC_LIBV8 = 1) # only necessary for Linux without the nodejs library / headers
install.packages("rstan", repos = "https://cloud.r-project.org/", dependencies = TRUE)

#rethinking 
sudo apt install r-cran-devtools
sudo apt install r-cran-tensora
sudo apt install r-cran-mvtnorm

devtools::install_github("stan-dev/cmdstanr")
cmdstanr::install_cmdstan()
install.packages(c("coda","mvtnorm","devtools","loo","dagitty"))
devtools::install_github("rmcelreath/rethinking")

#tidyverse
sudo apt install r-cran-vroom r-cran-tzdb r-cran-broom r-cran-googledrive r-cran-googlesheets4  r-cran-readr r-cran-haven

install.packages("tidyverse")
