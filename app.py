from ultralytics import YOLO
from PIL import Image
import os
import time
path = "./model/"
files = os.listdir(path)
print(files)
import re
start = time.time()

filename = f"{files[3]}"

regex = re.compile(r'\D+(\d+)\D+(\d+)')
match = regex.search(filename)

if match:
    number = int(match.group(2))
    print(number)
else:
    print("taille du model inconue.")

model = YOLO(f'./model/{filename}')

path_images = "./image/"
images = os.listdir(path_images)
total_image=len(images)
i=0
for image in images:
    print(f'image {i}/{total_image}')
    i=i+1
    model.predict(f'image/{image}', imgsz=number)
print('fini')
end = time.time()
temps_proces=end - start
print("temps proses",temps_proces)

