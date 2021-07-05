#!/usr/bin/env bash

# _anaconda_version=2021.05

# _anaconda_file="Anaconda3-${_anaconda_version}-Linux-x86_64.sh"

# cd
# rm -f ${_anaconda_file}*
# rm -rf anaconda3/
# wget https://repo.anaconda.com/archive/${_anaconda_file}
# bash ${_anaconda_file} -b
# echo "y" | conda update --all

# rm ${_anaconda_file}

# unset _anaconda_version _anaconda_file

function create_folder {
  commands
}

apt update
apt install git -y
pip install gdown
gdown https://drive.google.com/uc?id=1_aMwuZXYO8rYiBHKxxuuSjF4Mb-A3Fyr
git clone https://github.com/AntiverX/torch_test.git
pip install -r ./torch_test/requirements.txt
notify-run configure https://notify.run/c/blBlCOO9fKVevql8
mkdir ./torch_test
mkdir ./torch_test/dataset_50000 ./torch_test/dataset_50000/train ./torch_test/dataset_50000/val
tar -xvf ILSVRC2012_img_val_50000.tar -C ./torch_test/dataset_50000
cd ./torch_test
python test.py
curl --compressed -Ls https://github.com/labbots/google-drive-upload/raw/master/install.sh | sh -s