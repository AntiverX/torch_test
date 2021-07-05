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

apt update
apt install git unrar unzip -y
pip install gdown
# download needed files
gdown https://drive.google.com/uc?id=1iPGbr5-z2LogtMFG1rwwekV_aTubvAb2
gdown https://drive.google.com/uc?id=1Tv4MHQzDWTUC9hRFihRhG8_jt1h0VhnR
gdown https://drive.google.com/uc?id=1VwHAbri6y6oh8lkpZ6sSY_b1FRNnCLFL
gdown https://drive.google.com/uc?id=1Xd4BPFy1RPmE7MEXMu77E2_xWOhR1pHW
gdown https://drive.google.com/uc?id=10w_HuLklGc8GA_FtUSdnHT8Yo1mxYziP
gdown https://drive.google.com/uc?id=1NLZY3fzuIXQp1gr-B2MKEAIVsdvSlW74

# create folders
mkdir ./AttentionXML
mkdir ./AttentionXML/code
mkdir ./AttentionXML/code/data/
tar -zxvf Amazon-670K.tar.gz -C ./AttentionXML/code/data/
tar -zxvf AmazonCat-13K.tar.gz -C ./AttentionXML/code/data/
tar -zxvf EUR-Lex.tar.gz -C ./AttentionXML/code/data/
tar -zxvf Wiki10-31K.tar.gz -C ./AttentionXML/code/data/
unzip glove.zip -d ./AttentionXML/code/data/
unrar x code.rar ./AttentionXML/




# download code
#git clone https://github.com/AntiverX/torch_test.git
#pip install -r ./torch_test/requirements.txt
#notify-run configure https://notify.run/c/blBlCOO9fKVevql8
#mkdir ./torch_test
#mkdir ./torch_test/dataset_50000 ./torch_test/dataset_50000/train ./torch_test/dataset_50000/val
#tar -xvf ILSVRC2012_img_val_50000.tar -C ./torch_test/dataset_50000
#cd torch_test
#python test.py
#curl --compressed -Ls https://github.com/labbots/google-drive-upload/raw/master/install.sh | sh -s



