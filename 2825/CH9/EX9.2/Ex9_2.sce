//Ex9_2 Pg-475
clc

Aol= 50000 //open loop gain
fol=14 //open loop frequency in HZ
fcl=(Aol+1)*fol //close loop frequency in Hz
printf("Close loop Bandwidth = %.0f kHz",fcl*10^-3)
