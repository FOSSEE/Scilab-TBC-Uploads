clc;
clear;
format('v',11);
w=2*%pi*10^7;                   //from inspection of the given E field.
f=w/(2*%pi);
c=3*10^8;                       //c=velocity of the wave in air.
lemda=c/f;
k=2*%pi/lemda;
disp(lemda,"The wavelength(in meter)=");
disp(k,"The propagation constant,k(in rad/m)=");
