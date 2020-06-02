#!/usr/bin/python3
import os
import sys
import shutil

directory = sys.argv[1]
if(os.path.isdir(directory) != True):
	sys.exit("Podany argument nie jest katalogiem")
subdirectories = []
for subdir in os.scandir(directory):
	if subdir.is_dir():
		subdirectories.append(subdir)
for subdir in subdirectories:
	location = os.path.abspath(subdir)
	for subdirstuff in os.scandir(subdir):			
		stuff_location = os.path.abspath(subdirstuff)
		new_location = os.path.dirname(location)+"/"+os.path.basename(stuff_location)
		shutil.move(str(stuff_location),new_location)
	os.rmdir(location)		
