import json
import os

homePath = os.path.dirname(__file__)
file = open(homePath + "/dists/stable/main/binary-amd64/Packages", "r")
jsonFile = []

with open(homePath + "/dists/stable/main/binary-amd64/Packages", "r") as file:
    content = file.read()
    packages = content.split("\n\n")
    for package in packages:
        if(package != ""):
            values = {}
            lines = package.split("\n")
            for line in lines:
                splitLine = line.split(":")
                key = splitLine[0]
                if(len(splitLine) > 1):
                    if(key in ["Package", "Version", "Filename"]):
                        value = splitLine[1]
                        values[key] = value
            jsonFile.append(values)

with open(homePath + "/packages.json", "w") as dosya:
    json.dump(jsonFile, dosya)