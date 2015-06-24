clc
//initialization of varaibles
P=15 //psia
T2=70+460 //R
T1=55+460 //R
//calculations
pw=0.2141
pA=P-pw
mratio=pA*29/(pw*18)
mAbym=mratio/(1+mratio)
mwbym=1/(1+mratio)
pg=0.3631 //psia
phi=pw/pg
gamma=1/mratio
//results
printf("Partial pressure of water vapor = %.2f psia",pA)
printf("\n Specific humidity = %.4f lb vapor/lb air",gamma)
