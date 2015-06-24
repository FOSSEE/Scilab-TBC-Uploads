//Ex9_1 Pg-475
clc

Aol= 250000 //open loop gain
fol=160 //open loop frequency in HZ
Acl=50 //close loop gain

fcl=Aol/Acl*fol //close loop frequency in Hz
printf("Close loop Bandwidth = %.0f kHz",fcl*10^-3) 
