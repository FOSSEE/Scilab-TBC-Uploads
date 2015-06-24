//Exa 7.4
clc;
clear;
close;
//Given data :
Eg=1.43;//in eV
deltaLambda=0.1;//in nm
deltaLambda=deltaLambda*10^-9//in meter
c=3*10^8;//speed of light in m/s
h=6.63*10^-34;//Planks contant
//Part (a) :
//Fomula : Eg=h*c/lambda
lambda=h*c/(Eg*1.6*10^-19);//in meter
disp(lambda*10^6,"Wavelength of optical emission in micro meter : ");
//Part (b) :
//Formula : deltaNEU=c*deltaLambda/lambda^2;//in Hz
deltaNEU=c*deltaLambda/lambda^2;//in Hz
disp(deltaNEU*10^-9,"Frequency separation of longitudinal modes in GHz : ");