#!/bin/bash

# login as root 
dnf install -y gcc-c++ make cmake curl libcurl-devel

# check which version is currently supported for Fedora
curl -sL https://rpm.nodesource.com/setup_10.x | bash -
dnf install -y nodejs
echo node --version
echo npm --version

# r, rstudio
dnf install -y R
wget https://download1.rstudio.org/desktop/centos7/x86_64/rstudio-1.2.1335-x86_64.rpm ~/Downloads/rstudio-1.2.1335-x86_64.rpm
dnf install -y ~/Downloads/rstudio-1.2.1335-x86_64.rpm

# julia
dnf copr enable -y nalimilan/julia
dnf install julia

# juno, atom
wget https://atom.io/download/rpm ~/Downloads/atom.x86_64.rpm
dnf install -y ~/Downloads/atom.x86_64.rpm
rm -fr ~/Downloads/atom.x86_64.rpm
apm install uber-juno
atom


# mysql
# postgres
# jupyter notebook
# anaconda
# java, eclipse
# cevelop
# google-chrome



