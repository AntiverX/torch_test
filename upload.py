import os
import subprocess


PATH = "/root/torch_test/training/"
dirs = [name for name in os.listdir(PATH) if os.path.isdir(name)]

files = []
while True:
    files_new = [name for name in os.listdir(os.path.join(PATH, dirs[-1], 'trainPics'))]
    difference = files_new - files
    if len(difference) > 0:
        process = subprocess.Popen(f"gupload {os.path.join(PATH, dirs[-1], 'trainPics', difference[-1])}", shell=True, stdout=subprocess.PIPE)
        process.wait()
