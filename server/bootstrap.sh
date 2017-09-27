#!/bin/bash

# Fundamental options
pac="apt-get"
install_cmd="$pac install -y"

# Upgrade system
$pac update && $pac upgrade -y
$install_cmd wget
$install_cmd bzip2

# Binary dependency for accessing MSSQL Databases
$install_cmd freetds-dev

### get mini-conda, -b batch mode, assumes that you agree to the license agreement
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda3
rm Miniconda3-latest-Linux-x86_64.sh
