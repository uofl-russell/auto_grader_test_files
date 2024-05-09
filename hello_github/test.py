import json
import glob
import os
import sys

# Set the directory you want to start from
rootDir = '.'
json_count = len(glob.glob1(rootDir,"*.json"))
if json_count == 0:
    print("No JSON files found.")
    sys.exit(1)
if json_count > 1:
    print("Multiple JSON files found. There should only be one JSON file.")
    sys.exit(1)

filename = 'data_primary.json'
validData = {
    "firstName": "Sam",
    "lastName": "Smith",
    "isActive" : "true",
    "idNumber" : "778645",
    "comments" : "New hire in the engineering department",
    "affiliates" : [
        {
            "firstName" : "Jane",
            "lastName" : "Doe",
            "relationship" : "Friend"
        },
        {
            "firstName" : "John",
            "lastName" : "Doe",
            "relationship" : "Neighbor"
        }
    ],
    "officeBuilding" : "Duthie Center For Engineering",
    "officeNumber" : "216"
}
try:
    with open(filename, 'r') as f:
        data = json.load(f)
        validKeys = ['firstName','lastName','isActive','idNumber','comments','affiliates','officeBuilding','officeNumber']
        for key in data:
            if key not in validKeys:
                print("Invalid key found in JSON file:", key)
                sys.exit(1)
        if data != validData:
            print("The JSON Object fails to meet specification.")
            sys.exit(1)
    print("Pass")
            

    # Now data is a Python object that contains the data from the JSON file
except FileNotFoundError:
    print("The file data.json was not found.")
    sys.exit(1)
except json.JSONDecodeError:
    print("The file is not a valid JSON file.")
    sys.exit(1)
except Exception as e:
    print("An unknown error occurred:", e)
    sys.exit(1)