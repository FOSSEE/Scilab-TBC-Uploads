//Exa 6.2
clc;
clear;
close;
//given data :
format('v',5);
lambda=1310;//in nm
lambda=lambda*10^-9;//in meter
ETAint=70;//in %
I=50;//in mA
I=I*10^-3;//in A
h=6.63*10^-34;//constant
c=3*10^8;//speed of light in m/s
q=1.6*10^-19;//in coulamb
Pint=(ETAint/100)*I*h*c/(q*lambda);//in Watts
disp(Pint*10^3,"Internally generated optical power in mWatt : ");