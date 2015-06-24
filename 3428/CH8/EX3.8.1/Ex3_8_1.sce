//Section-3,Example-1,Page no.-EC.19
//To calculate the BOD of the sample.
clc;
DO_b=840
DO_i=230
ml_ad=80    //ml. of sample after dilution
ml_bd=50    //ml. of sample before dilution
BOD=((DO_b-DO_i)*(ml_ad/ml_bd))
disp (BOD,'Biological Oxygen Demand (ppm)')
