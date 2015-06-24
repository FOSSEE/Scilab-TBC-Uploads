//Example 4_1
clc;
clear;
close;
format('v',9)
//given data : 
E=2;//eV
c=3*10^8;//m/s//Speed of light
h=6.64*10^-34;//Js//Planks Constant
E=E*1.6*10^-19;//J
lambda=c*h/E;//m
lambda=lambda/10^-10;//Angstrum
disp(lambda,"Wavelength(Angstrum)");
k=2*%pi/(lambda*10^-10);//m^-1
disp(k,"k-vector(m^-1)");
