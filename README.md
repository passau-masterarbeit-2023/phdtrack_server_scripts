# Server side scripts

This repository stores server specific scripts.

### Server setup checklist

* [ ] Download Zenodo dataset to `$PHDTRACK_DATA_DIR`, extract it and do a copy to `$PHDTRACK_DATA_DIR_CLEANED`
* [ ] conda
* [ ] rustup and cargo for Rust
* [ ] Add github link: [Add SSH key for GitHub](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).
* [ ] create conda venv: `conda create --name py311 python=3.11.4 --channel conda-forge`
* [ ] download python packages.
* [ ] cleaned dataset using script `/root/phdtrack/masterarbeit_report_onyr/src/chunk_algorithms.py --delete --input $PHDTRACK_DATA_DIR_CLEANED`
