# Server side scripts

This repository stores server specific scripts.

### Server setup checklist

##### Pre-setup
* [ ] setup git: `git config --global user.name "your_name"` and `git config --global user.email "you@emaial.com"`.
* [ ] Add github link: [Add SSH key for GitHub](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).
* [ ] Install server script repo with: `git clone git@github.com:passau-masterarbeit-2023/phdtrack_server_scripts.git`
* [ ] Install conda
* [ ] Install rustup and cargo for Rust

##### Dealing with datasets
* [ ] Download Zenodo dataset to `$PHDTRACK_DATA_DIR`, extract it and do a copy to `$PHDTRACK_DATA_DIR_CLEANED`
* [ ] create conda venv: `conda create --name py311 python=3.11.4 --channel conda-forge`
* [ ] download python packages.
* [ ] cleaned dataset using script `/root/phdtrack/masterarbeit_report_onyr/src/chunk_algorithms.py --delete --input $PHDTRACK_DATA_DIR_CLEANED`
