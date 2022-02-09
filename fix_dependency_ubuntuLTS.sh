# Need Ubuntu LTS, tested on 20.04 LTS
# You need to install r-base first.
# You need to add r-cran repo first.
# follow the offical guide first, and only run the script if the suggested install has failed
# after the script, try again the offical install method
#configuring C toolchain for linux

# check if R is installed. 
if dpkg-query -Wf'${db:Status-abbrev}' "r-base" 2>/dev/null | grep -q '^i'; then
    printf 'r-base is installed\n' 
else
    printf 'r-base not currently installed.\n' && exit
fi

sudo add-apt-repository ppa:marutter/rrutter4.0
sudo add-apt-repository ppa:c2d4u.team/c2d4u4.0+
sudo apt update && upgrade
sudo apt install r-cran-rstan
#install V8
sudo apt install libnode-dev
sudo apt install gcc-10 g++-10
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-10 100 --slave /usr/bin/g++ g++ /usr/bin/g++-10 --slave /usr/bin/gcov gcov /usr/bin/gcov-10
sudo update-alternatives --config gcc
#rstan
sudo apt install r-cran-shiny r-cran-igraph r-cran-colourpicker r-cran-threejs
#rethinking
sudo apt install r-cran-devtools
sudo apt install r-cran-tensora
sudo apt install r-cran-mvtnorm
#tidyverse
sudo apt install r-cran-vroom r-cran-tzdb r-cran-broom r-cran-googledrive r-cran-googlesheets4 r-cran-readr r-cran-haven
