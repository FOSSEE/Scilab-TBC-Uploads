clc;
clear;
Wb=0.5*10^-6 //width of base region in m
Dp=15*10^-4 // in m^2/s

//Calculation
tau_n=Wb^2/(2*Dp) //in s
tau_B=tau_n //in s
fT=1/(2*%pi*tau_B)

mprintf("a) upper frequency limit= %1.2e Hz",fT) 
