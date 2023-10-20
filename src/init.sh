#!/bin/bash

PHDTRACK_DATA_DIR=$HOME/phdtrack/phdtrack_data
PHDTRACK_DATA_DIR_CLEANED=$HOME/phdtrack/phdtrack_data_cleaned

# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh # install rust via rustup

# check if conda command is available, exit if not
if ! command -v conda &> /dev/null; then
    echo "conda command is not available, exiting."
    exit 1
fi

# create python conda env
conda create --name py311 python=3.11.4 --channel conda-forge

conda activate py311
pip install -r $REPO_DIR/conda/requirements.txt

# additional libs for some python packages
apt-get install graphviz graphviz-dev

