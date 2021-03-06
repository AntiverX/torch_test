import os
import subprocess
import time

PATH = "/root/torch_test/training/"
dirs = [name for name in os.listdir(PATH)]

files = []
while True:
    print(dirs)
    files_new = [name for name in os.listdir(os.path.join(PATH, dirs[-1], 'trainPics'))]
    log = [name for name in os.listdir(os.path.join(PATH, dirs[-1], 'trainingLogs'))]
    difference = list(set(files_new) - set(files))
    if len(difference) > 0:
        process = subprocess.Popen(f"gupload {os.path.join(PATH, dirs[-1], 'trainPics', difference[0])}", shell=True, stdout=subprocess.PIPE)
        process.wait()
        process = subprocess.Popen(f"gupload {os.path.join(PATH, dirs[-1], 'trainingLogs', log[0])}", shell=True, stdout=subprocess.PIPE)
        process.wait()
    files = files_new
    time.sleep(300)
