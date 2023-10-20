#!/bin/bash

PHDTRACK_DATA_DIR=$HOME/phdtrack/phdtrack_data

# copy dataset to new place before cleaning
cp -r /root/phdtrack/phdtrack_data/ /root/phdtrack/phdtrack_data_cleaned

# check if conda command is available, exit if not
if ! command -v conda &> /dev/null; then
    echo "conda command is not available, exiting."
    exit 1
fi

# create python conda env
conda create --name py311 python=3.11.4 --channel conda-forge