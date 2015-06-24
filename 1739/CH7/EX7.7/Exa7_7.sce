//Exa 7.8
clc;
clear;
close;
//Given data :
format('v',5)
L=0.3;//in mm
L=L*10^-3;//in meter
n=3.6;//Refractive Index(unitless)
c=3*10^8;//speed of light in m/s
lambda=0.82;//in um
lambda=lambda*10^-6;//in meter
deltaNEU=c/(2*n*L);//in Hz
disp(deltaNEU*10^-9,"Frequency spread between longitudinal modes in GHz");
deltaLambda=lambda^2/(c/deltaNEU)//in meter
disp(deltaLambda*10^9,"Wavelength spread between longitudinal modes in nano meter : ");