//Exa 8.7
clc;
clear;
close;
//Given data :
ETA=40;//quantum efficiency in % 
E=1.5;//in eV
Ip=3;//in uA
h=6.63*10^-34;//Planks constant
c=3*10^8;//in m/s
q=1.6*10^-19;//in coulamb
lambda=h*c/(E*1.6*10^-19);//in meter
disp(lambda*10^9,"Wavelength of photodiode in nm : ");
P=Ip*10^-6*(E*1.6*10^-19)/(ETA*q/100);
disp(P*10^6,"Power required in micro Watts ; ");
//Note : Ans in the book is not accurate.