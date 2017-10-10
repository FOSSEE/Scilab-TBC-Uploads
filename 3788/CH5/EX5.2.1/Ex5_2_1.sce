//Example
//Calculate the baseband SN ratio for the video signal
//Variables
clc
clear
Fmax = 4.2
RFbw = 30
CNratio = 15
P = 9
Q = 8

//Result
delFpk = (RFbw/2) - Fmax
Brf = 2*(delFpk + Fmax)
SN = CNratio + 10*log10(RFbw/Fmax) + 20*log10(delFpk/Fmax)+ 1.5 +P + Q
printf("The baseband SN ratio for the video signal is %f",SN)
