//Exa 7.3
clc;
clear;
close;
//Given data
meu_r=1000;//relative permeability
n=5;//turns/cm
n=n*10^2;//turns/meter
i=0.5;//in Ampere
Volume=10^-4;//in m^3
I=(meu_r-1)*n*i;//in Ampere
MagneticMoment=I*Volume;//in Ameter^2
disp(round(MagneticMoment),"Magnetic moment of the rod in Ampere-meter^2 : ");