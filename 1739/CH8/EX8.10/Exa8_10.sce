//Exa 8.10
clc;
clear;
close;
//Given data :
format('v',10);
lambda=1.3;//in um
lambda=lambda*10^-6;//in meter
Id=8;//in nA
ETA=55;//in %
h=6.63*10^-34;//Planks constant
c=3*10^8;//in m/s
q=1.6*10^-19;//in coulamb
NEP=(h*c)*sqrt(2*q*Id*10^-9)/((ETA/100)*q*lambda);//in Ohm
disp(NEP,"NEP for Si p-i-n photodiode in Ohm : ");