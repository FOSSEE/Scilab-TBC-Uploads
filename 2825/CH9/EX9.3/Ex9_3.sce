//Ex9_3 Pg-475
clc

Aol_Beta_1= 2500 //open loop gain
fol=20 //open loop frequency in HZ
fcl=Aol_Beta_1*fol //close loop frequency in Hz
printf("Close loop Bandwidth = %.0f kHz",fcl*10^-3)
