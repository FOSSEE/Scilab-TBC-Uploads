clear;
clc;
Length=4 //in micro-m
Width=1 //in micro-m
R=1000 //in ohm
xj=1*10^-4 //junction depth in cm

//Calculation
N=Length/Width
R0=R/N
rho=R0*xj

mprintf("Sheet resistance= %i ohm\n",R0)
mprintf("average resistivity= %0.3f ohm-cm",rho)

