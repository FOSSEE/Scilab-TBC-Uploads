//Exa6
clc;
clear;
close;
//given data :
a=3.15; //in Angstrum
a=a*10^-10;//in meter
//angle
theta=20.2;//in degree
n=1;//(first order)
//for BCC crystal
d110=a/sqrt(2);//in meter
//Formula n*lamda=2*d*sin(theta)
lamda=(2*d110*sin(theta*%pi/180))/n;//in meter
disp("Wavelength is : "+string(lamda*10^10)+" Angstrum")