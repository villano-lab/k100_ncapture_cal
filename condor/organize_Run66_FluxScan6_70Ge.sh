#!/bin/sh

#standard R66 config, neutrons from PuBe 
#scan "high-flux" to "low-flux" situation along straight line 
COUNTER=0
for i in 1 2 3 4 5 6 7 8 9 10
do
  DATASETIDHEX=`printf "0x%04x" ${COUNTER}`
  rad=`./getPositionScan_HtoL.py -r -p ${i}`
  num=`ls -lh /data/chocula/villaa/k100Sim_Data/captureCal/Run66ShieldFluxScan6_PuBe_${DATASETIDHEX}_1M*000.txt |awk 'END{print NR;}'`
  cat /data/chocula/villaa/k100Sim_Data/captureCal/Run66ShieldFluxScan6_PuBe_${DATASETIDHEX}_1M* |awk 'BEGIN{thisev=0}{if($5==71031 && $6==0){print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6;thisev=$1}}' |awk -v rad=${rad} -v offset=${i} -v num=${num} 'END{print rad"\t"NR"\t"num}'
  let COUNTER++
done
