clc
clear
//Initialization of variables
Tp=12.57
Tw=10.73
ep=0.8
sig=0.1714
hc=7
//calculations
dt=ep*sig*(Tp^4-Tw^4)/hc
//results
printf("Error in probe reading = %d F",dt)
