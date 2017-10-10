clc;
clear;
L=80*10^-4 //length in m
myu_n=1350 //in cm^2/V
myu_p=480 //in cm^2/V
V=12 //applied voltage in V
tau_n=3.95*10^-9 //transit time in sec
tau_p=2*10^-6 //carrier lifetime in sec

//Calculation
tn=L^2/(myu_n*V) //transit time in sec
Gph=(tau_p/tau_n)*(1+(myu_p/myu_n))

mprintf("Gain of the photoconductor= %3.1f",Gph)
