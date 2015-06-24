//Exa 8.12
clc;
clear;
close;
//Given data :
A=200*25;//in um^2
A=A*10^-12;//in m^2
ETA=55;//Quantum Efficiency in %
lambda=1.3;//in um
lambda=lambda*10^-6;//in meter
Id=8;//in nA
Id=Id*10^-9;//i Ampere
h=6.63*10^-34;//Planks constant
q=1.6*10^-19;//in coulamb
c=3*10^8;//in m/s
NEP=h*c*sqrt(2*q*Id)/((ETA/100)*q*lambda);//in Watts
disp(NEP,"Noise equivalent power in Watts : ");
Dstar=sqrt(A)/NEP;//in m-Hz^2/W^-1
disp(Dstar,"Specific detectivity of Ge p-i-n photodiode in m-Hz^2/W : ");
//Note : Answer in the bok is not accurate.