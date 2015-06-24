//Exa 8.3
clc;
clear;
close;
//Given data :
lambda=1300;//in nm
lambda=lambda*10^-9;//in meter
ETA=90;//quantum efficiency in % 
h=6.63*10^-34;//Planks constant
q=1.6*10^-19;//in coulamb
c=3*10^8;//in m/s
R=(ETA/100)*q*lambda/(h*c);//in A/W
disp(R,"Responsivity of InGaAs in A/W : ");