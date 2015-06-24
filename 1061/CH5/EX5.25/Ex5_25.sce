//Ex:5.25
clc;
clear;
close;
n1=1.55;// core refractive index
n2=1.48;// cladding refractive index
l=150;//fiber length in m
c=3*10^8;//the speed of light in m/s
dl=(n1^2-n2^2)/(2*n1);
dL=0.068;
dt=(l*n1*dL)/(c);// intermodel dispersion in s
dT=dt*10^9;// intermodel dispersion in ns
printf("The intermodel dispersion =%f ns", dT);