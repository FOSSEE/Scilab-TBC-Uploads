// Exa 1.5
clc;
clear;
close;
// Given data
format('v',13)
e= 1.6*10^-19;// in C
ni= 1.5*10^16;
miu_n= 0.13;
miu_p= 0.05;
atomicDensity= 5*10^28;//atomic density of Si in /m^3
C= 1/(2*10^8);// concentration  
N_D= atomicDensity*C;// in /m^3
n=N_D;
p= ni^2/N_D;// in /m^3
sigma= e*(n*miu_n+p*miu_p);// in s/m
disp(sigma,"Conductivity of the extrinsic semiconductor in s/m is : ")

