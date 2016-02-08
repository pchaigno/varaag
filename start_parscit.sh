#!/bin/bash
cd ParsCit
docker build -qt parscit .
cd ..
docker build -qt varaag .
docker run --name gummy_bear -v /home/paul/Documents/Mendeley\ Desktop/:/pdfs varaag
docker rm gummy_bear