#!/bin/bash
REPO_DIR=$HOME/phdtrack/phdtrack_server_scripts/
PHDTRACK_DATA_DIR=$HOME/phdtrack/phdtrack_data
PHDTRACK_DATA_DIR_CLEANED=$HOME/phdtrack/phdtrack_data_cleaned

# check if unzip command is available, exit if not
if ! command -v unzip &> /dev/null; then
    echo "unzip command is not available, exiting."
    exit 1
fi

# create directory if not exists
mkdir -p $PHDTRACK_DATA_DIR
mkdir -p $PHDTRACK_DATA_DIR_CLEANED

# download original dataset
wget -O $PHDTRACK_DATA_DIR/Performance_Test.zip https://zenodo.org/record/6537904/files/Performance%20Test.zip?download=1
wget -O $PHDTRACK_DATA_DIR/README.md https://zenodo.org/record/6537904/files/README.md?download=1
wget -O $PHDTRACK_DATA_DIR/Training.zip https://zenodo.org/record/6537904/files/Training.zip?download=1
wget -O $PHDTRACK_DATA_DIR/Validation.zip https://zenodo.org/record/6537904/files/Validation.zip?download=1

# unzip original dataset
unzip $PHDTRACK_DATA_DIR/Performance_Test.zip -d $PHDTRACK_DATA_DIR && mv "$PHDTRACK_DATA_DIR/Performance Test" "$PHDTRACK_DATA_DIR/Performance_Test"
unzip $PHDTRACK_DATA_DIR/Training.zip -d $PHDTRACK_DATA_DIR
unzip $PHDTRACK_DATA_DIR/Validation.zip -d $PHDTRACK_DATA_DIR

unzip $PHDTRACK_DATA_DIR/Performance_Test.zip -d $PHDTRACK_DATA_DIR_CLEANED && mv "$PHDTRACK_DATA_DIR_CLEANED/Performance Test" "$PHDTRACK_DATA_DIR_CLEANED/Performance_Test"
unzip $PHDTRACK_DATA_DIR/Training.zip -d $PHDTRACK_DATA_DIR_CLEANED
unzip $PHDTRACK_DATA_DIR/Validation.zip -d $PHDTRACK_DATA_DIR_CLEANED

# remove useless files from PHDTRACK_DATA_DIR
rm -r $PHDTRACK_DATA_DIR/__MACOSX/
rm -r $PHDTRACK_DATA_DIR_CLEANED/__MACOSX/
rm $PHDTRACK_DATA_DIR/*.zip



# clean dataset with python script
python /root/phdtrack/masterarbeit_report_onyr/src/chunk_algorithms.py --delete --input $PHDTRACK_DATA_DIR_CLEANED

echo "🏁 Finish installing Dataset!"