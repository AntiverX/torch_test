from os import listdir
from os.path import isfile, join
from shutil import move
import os

onlyfiles = [f for f in listdir("./dataset_50000/") if isfile(join("./dataset_50000/", f))]
val = []
train = []
for i in range(len(onlyfiles)):
    if i < 5000:
        val.append(join("./dataset_50000/", onlyfiles[i]))
    else:
        train.append(join("./dataset_50000/", onlyfiles[i]))

try:
    os.mkdir("./dataset_50000/val")
    os.mkdir("./dataset_50000/train")
except:
    pass

for file in train:
    move(file, os.path.join("./dataset_50000/train", os.path.split(file)[1]))
for file in val:
    move(file, os.path.join("./dataset_50000/train", os.path.split(file)[1]))