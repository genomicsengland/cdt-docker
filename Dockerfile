# Base CDT Docker Image of Python + R
#

FROM ubuntu:18.04

# Install required postgres headers and libraries to allow PG packages to run
RUN apt-get update && apt-get install -y libpq-dev

# Install python
RUN apt-get update && apt-get install -y python3.6

# Install r-base
RUN apt-get update && apt-get install software-properties-common
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
RUN add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/'
RUN apt-get update && apt-get install -y r-base=3.6.1*

# Install the wrangleR package that should be downloaded from https://github.com/genomicsengland/wrangleR/releases/tag/v1.7
COPY wrangleR_1.7.tar.gz /
COPY install.r /
# install it
RUN ["R", "CMD", "INSTALL", "wrangleR_1.7.tar.gz"]
RUN ["Rscript", "install.r"]
