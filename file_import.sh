#!/bin/bash

apt-get install python3-dev
pip install pandas
pip install wheel
pip install primer3-py
apt-get install gfortran

cd ..
git clone https://github.com/davidhoover/DNAWorks.git
cd DNAWorks/
make
cd ../Synt

cp CHO.txt ../DNAWorks/
cp Sf9.txt ../DNAWorks/
cp bash_next.sh ../DNAWorks/
cp Logfile_generate.py ../DNAWorks/
cp Primer_Alg.py ../DNAWorks/
cp start.sh ../DNAWorks/

cd ../DNAWorks
bash start.sh
