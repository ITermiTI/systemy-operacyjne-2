#!/usr/bin/python3
import sys
import os
import shutil

directory = sys.argv[1]

if(os.path.isdir(directory) != True):
	sys.exit("Podany argument nie jest katalogiem")
executable_files = []
for root,dirs,files in os.walk(directory):
	for file in files:
		if os.access(directory+"/"+file, os.X_OK):
			location = os.path.join(directory,file)
			location = os.path.abspath(location)
			executable_files.append((location, os.path.getsize(location)));
executable_files.sort(key=lambda file: file[1], reverse=True)
for i in range(len(executable_files)):
	new_filename = str(executable_files[i][0])+"."+str(i);
	shutil.move(str(executable_files[i][0]),new_filename)	
