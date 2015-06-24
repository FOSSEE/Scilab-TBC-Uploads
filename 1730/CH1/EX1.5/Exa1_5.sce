//Exa5
clc;
clear;
close;
//given data :
n=2;
d=0.4;// in nenometer
d=d*10^-9;// in meter
theta=16.8/2;// in degree
//using Bragg's equation we have n*lamda=2*d*sin(theta), so
lamda=(2*d*sin(8.4*%pi/180))/n;
disp("Wavelength of X-rays used is : "+string(lamda*10^10)+" Angstrum");