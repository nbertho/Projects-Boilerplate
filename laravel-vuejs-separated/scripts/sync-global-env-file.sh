#!/usr/bin/python3
import fileinput

server_file = '../backend/.env'
config_file = '../config/.env'
overrideDict = {}

with open(config_file, 'r') as file:
  overrideData = file.readlines()
  for line in overrideData:
    if '=' in line:
      data = line.split('=')
      overrideDict[data[0]] = data[1]

newData = []
with open(server_file, 'r') as file:
  originalData = file.readlines()
  for line in originalData:
    if '=' in line:
      data = line.split('=')
      if overrideDict.get(data[0]) != None:
        line = '{}={}'.format(data[0], overrideDict.get(data[0]))
    newData.append(line)

with open(server_file, 'w') as file:
  file.writelines(newData)