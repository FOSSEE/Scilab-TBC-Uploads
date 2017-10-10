//Ex 3.1 page 117

clc;
clear;
close;

R=100;// ohm
Vs=230;// V
f=50;// Hz
alpha=45;// degree

Vo=Vs*sqrt(2)/2/%pi*(1+cosd(alpha));// V
Io=Vo/R;// A
printf('Average current = %.4f A',Io)
Vor=Vs/sqrt(2)*sqrt(1/180*((180-alpha)+sind(2*alpha)/2));// V
Ior=Vor/R;// A
P=Ior**2*R;// W
printf('\n Power delivered = %.2f W',P)

//Ans in the textbook is not accurate.
