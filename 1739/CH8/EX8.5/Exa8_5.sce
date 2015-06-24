//Exa 8.5
clc;
clear;
close;
//Given data :
ETA=65;//Quantum efficiency in %
lambda=900;//in nm
lambda=lambda*10^-9;//in meter
q=1.6*10^-19;//in coulamb
h=6.63*10^-34;//Planks constant
c=3*10^8;//in m/s
P=0.5;//in uWatt
Im=20;//in uA
Ip=(ETA/100)*q*P*lambda/(h*c);//in micro Ampere
M=Im/Ip;//unitless
disp(M,"Multiplication Factor : ");
//Note : Ans in the book is not accurate.