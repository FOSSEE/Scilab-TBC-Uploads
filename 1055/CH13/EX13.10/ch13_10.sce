// To determine the short circuit capacity of each station
clear
clc;
X=1200*100/800;// percent reactance of other  generating station
Xc=.5*1200/(11*11);
Sc=1200*100/86.59;// short circuit MVA of the bus
Xf=119.84;// equivalent fault impedence between F and neutral bus 
MVA=1200*100/Xf;
mprintf("short circuit capacity of each station=%.0f MVA\n",MVA);
