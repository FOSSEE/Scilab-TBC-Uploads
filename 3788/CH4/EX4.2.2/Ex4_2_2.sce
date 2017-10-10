// Example 4.2.2
// Calculate the power received by the antenna  while the gain of 
// receiving antenna is 52.3 dB

//variables
clc
clear
EIRP=27.0
Gr=52.3
R=4*10^7
lam=2.727*10^(-2)

//calculation
pathloss=20*log10((4*%pi*R)/lam)   //Finding path loss
Pr=EIRP+Gr-pathloss                //Finding  Power received

//Result
printf("Power received at the antenna is %f dBW",Pr)
