#!/bin/bash


wget -qO- https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Common-Credentials/10-million-password-list-top-100.txt | grep -Eo '^[0-9]+$'
wget -qO- https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Common-Credentials/10-million-password-list-top-100.txt | grep -Eo '^[a-z]+$'
wget -qO- https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Common-Credentials/10-million-password-list-top-100.txt | grep -Eo '(.)\1{1,}'

