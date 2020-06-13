#!/bin/bash
for entry in *.wav
do
  
  sox -V $entry -r 8000 -c 1 -t gsm ${entry:0:${#entry}-3}gsm
  asterisk -rx "file convert $1/${entry:0:${#entry}-3}gsm $2/${entry:0:${#entry}-3}g729"  
done