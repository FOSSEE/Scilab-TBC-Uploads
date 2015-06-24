//Exa 8.14
clc;
clear;
close;
//Given data :
format('v',5);
lambda=0.9;//in um
lambda=lambda*10^-6;//in meter
ETA=60;//Quantum Efficiency in %
Id=3;//in nA
Id=Id*10^-9;//in Ampere
B=5;//in MHz
P=200;//in nW
P=P*10^-9;//in Watts 
h=6.63*10^-34;//Planks constant
q=1.6*10^-19;//in coulamb
c=3*10^8;//in m/s
Ip=P*(ETA/100)*q*lambda/(h*c);//in Ampere
//Formula : Is^2=2*q*(Ip+Id)*B
Is=sqrt(2*q*(Ip+Id)*B*10^6);//in Ampere
disp(Is*10^9,"Total shot noise current in nA : ");