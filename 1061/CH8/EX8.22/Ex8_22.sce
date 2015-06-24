//Ex:8.22
clc;
clear;
close;
c=3*10^8;// speed of light in m/s
n=3.66;// for GaAs
L=150*10^-6;// cavity length in m
dv=c/(2*n*L);//frequency separation in Hz
dv1=dv/10^12;// frequency separation in GHz
h=6.64*10^-34;// plank constant
q=1.6*10^-19;// charge of an electron
dE=(h*dv)/q;// energy separation eV
printf("The frequency separation =%f GHz", dv1);
printf("\n The energy separation =%f meV", dE*1000);