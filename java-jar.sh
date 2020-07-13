#!/bin/bash 

cd bin/manifests

for file in *.mf; do(
    fileName="$(basename -s .mf $file)";
    echo $file;
    
    cd ../classes/
    jar cfm "../$fileName.jar" "../manifests/$file" "./";
    cd ../manifests/
) done
