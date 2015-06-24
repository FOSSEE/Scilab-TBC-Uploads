//clear//
//Caption:Calculation of Responsivity of photodiode
//Example6.4
//page227
clear;
clc;
close;
Lambda = 1300e-09; //wavelength in meters
C = 3*(10^8); //free space velocity
v =C/Lambda; //frequency in Hz
q = 1.6*(10^-19);//Change in coulombs
etta = 0.9; //quantum efficiency 90%
h = 6.625*10^-34; //planks constant
R = (etta*q)/(h*v); //Responsivity
disp(R,'Responsivity of photodiode at 1330nm in A/W R = ')
Eg = 0.73; //energy gap in electron volts
LambdaC = 1.24/Eg; //cut-off wavelength in meters
disp(LambdaC,'cut-off wavelength in meters = ')
//Result
//Responsivity of photodiode at 1330nm in A/W R = 0.9418868  
//cut-off wavelength in meters = 1.6986301 
