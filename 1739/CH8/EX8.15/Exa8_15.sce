//Exa 8.15
clc;
clear;
close;
//Given data :
lambda=1.35;//in um
lambda=lambda*10^-6;//in meter
ETA=40;//Quantum Efficiency in %
Im=4.9;//in uA
Im=Im*10^-6;//in Ampere
P=0.2;///in uW
P=P*10^-6;//in watts
h=6.63*10^-34;//Planks constant
q=1.6*10^-19;//in coulamb
c=3*10^8;//in m/s
M=Im*h*c/((ETA/100)*q*P*lambda);//unitless
disp(floor(M),"Multiplication factor : ");