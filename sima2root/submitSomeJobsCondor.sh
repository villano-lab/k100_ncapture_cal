#!/bin/sh


#for i in $(seq 1 18) 
#do
#  ./makeListsCondor_PuBe.sh ${i} PuBe GenericShield captureCal 10M
#done
for i in $(seq 19 24) 
do
  ./makeListsCondor_PuBe.sh ${i} n24kev GenericShield captureCal 10M
done
