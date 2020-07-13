#!/bin/bash 

cd src/
find -name "*.java" > sources.txt
mkdir "../bin/classes"
javac -d "../bin/classes/" @sources.txt
unlink sources.txt
cd ../