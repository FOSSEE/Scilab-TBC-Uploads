//Exa 8.8
clc;
clear;
close;
//Given data :
format('v',5);
photons=1600;//incident photons/sec
lambda=1.3;//in um
electrons=1100;//generated/sec
ETA=electrons/photons;//unitless
q=1.6*10^-19;//in coulamb
h=6.63*10^-34;//Planks constant
c=3*10^8;//in m/s
R=ETA*q*lambda*10^-6/(h*c);//in A/W
disp(R,"Responsivity in A/W : ");