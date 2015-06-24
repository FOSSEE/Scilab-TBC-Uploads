//Exa 8.16
clc;
clear;
close;
//Given data :
format('v',5);
photons=10^13;//incident photons/sec
E=1.28*10^-19;//in Joule
h=6.63*10^-34;//Planks constant
q=1.6*10^-19;//in coulamb
c=3*10^8;//in m/s
//Part (a) : 
lambda=h*c/(E);//in meter
disp(lambda*10^6,"Wavelength of incident radiation in micro meter : ");
//Part (b) :
Ip=q*photons;//in Ampere
disp(Ip*10^6,"Output photocurrent in micro Ampere : ");
//Part (c) :
M=18;//unitless
Im=M*Ip;//in Ampere
disp(Im*10^6,"If device is an APD, Output photocurrent in micro Ampere : ");