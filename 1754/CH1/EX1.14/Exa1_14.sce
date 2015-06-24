//Exa 1.14
clc;
clear;
close;
//Given data
format('v',7);
ETA=70;//in %
Eg=0.75;//in eV
Eg=Eg*1.6*10^-19;//in Joule
h=6.63*10^-34;//Planks constant in J-s
c=3*10^8;//speed of light in m/s
e=1.6*10^-19;//in coulamb
lambda=h*c/Eg;//in meter
disp(lambda*10^9,"Wavelength in nm :");
R=(ETA/100)*e*lambda/(h*c);//in A/W
disp(R,"Responsivity of InGaAs photodiode in A/W : ");