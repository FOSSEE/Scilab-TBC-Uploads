//Ex:4.10
clc;
clear;
close;
N=10;// number of turns
A=1;// area in m^2
f=1*10^6;// frequency in Hz
V=100*10^-6;// in volt
x=1;// the value of cos(Angle)
u=4*%pi*10^-7;
H=(sqrt(2)*V)/(2*%pi*f*u*A*N);// peak value of the magnetic field intensity H 
printf("The peak value of the magnetic field intensity H  = %f uA/m", H*10^6);