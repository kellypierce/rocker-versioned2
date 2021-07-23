#!/bin/bash

## build ARGs
NCPUS=${NCPUS:-1}

set -e

install2.r --error --skipinstalled -n $NCPUS \
    rstan \
    rstanarm \
    pomp

 rm -rf /tmp/downloaded_packages
