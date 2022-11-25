from flask import Flask
import requests

url = 'http://127.0.0.1:5000/upload'
my_img = {'image': open('canada-goose-goslings-babies_square.png', 'rb')}
r = requests.post(url, files=my_img)

r.raise_for_status()
# convert server response into JSON format.
print(r.json())