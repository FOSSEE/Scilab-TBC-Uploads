//Exa 3.16
clc;
clear;
close;
//Given data :
n1=1.46;//unitless
n2=1.45;//unitless
Rcm=84;//in um
Rcm=Rcm*10^-6;//in meter
lambda=Rcm*4*%pi*(n1^2-n2^2)^(3/2)/(3*n1^2);//in meter
disp(lambda*10^6,"Wavelength of transmitted light in micro meter : ");