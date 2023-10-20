# here are some commands I used while configuring the server

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

# conda env manual broken pip installs
apt-get install graphviz graphviz-dev
pip install graphviz pygraphviz
pip install python-dotenv

