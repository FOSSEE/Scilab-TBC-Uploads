//Exa 8.1 
clc;
clear;
close;
//Given data :
Eg=1.43;//in eV
T=300;//in kelvin
h=6.63*10^-34;//Planks constant
c=3*10^8;//speed of light in m/s
lambda_c=h*c/(Eg*1.6*10^-19);//in meter
disp(lambda_c*10^9,"Longest Wavelength cut-off in nm : ")