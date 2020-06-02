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
			executable_files.append(file);
print("W zadanym katalogu jest " + str(len(executable_files)) + " plikow do ktorych jest prawo wykonania")
