//Exa 8.17
clc;
clear;
close;
//Given data :
M=20;//unitless
lambda=1.5;//in um
lambda=lambda*10^-6;//in meter
R=0.6;//in A/W
h=6.63*10^-34;//Planks constant
q=1.6*10^-19;//in coulamb
c=3*10^8;//in m/s
photons=10^10;//incident photons/sec
Im=M*R*photons*h*c/lambda;//in Ampere
disp(Im*10^9,"Output Photo current in nA : ");
ETA=R*h*c/(q*lambda);//unitless
disp(round(ETA*100),"Quantum Efficiency in % : ");