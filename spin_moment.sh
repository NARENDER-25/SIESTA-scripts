#!/bin/bash
#=======================================================================#
# Script:         grep  spin moment                                     #
# Author: Narender Kumar, Computational Nanoionics Research lab,        #  
#         Department of Applied Physics, SSGI, Shri Shanakaracharya     #
#         Technical Campus-Junwani Bhilai (Chhattisgarh) INDIA          #
# Dec 26,  year 2020                                                    #
# Give feedback in :    bansalnarender25@gmail.com                      #
#=======================================================================#
#   How to RUN                                                          #
# 1) ENTER your data range                                              #
# 2) This script make filename "spin_moment.dat" in which first         #
#    column is your strain value and 2nd column is stress               #
# 3) sh spin_moment.sh                                                  #
#=======================================================================#

for i in `seq -w 5.95959  0.05369  6.22804`  
do
cd $i

spinmoment=`grep 'spin moment' *.out | tail -1 | awk '{print $10}'`

echo $i '   '$spinmoment >> ../spin_moment.dat
cd ../
done


