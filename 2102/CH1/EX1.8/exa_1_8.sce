// Exa 1.8
clc;
clear;
close;
// Given data
format('v',13)
d= 2;// in mm
d=d*10^-3;//in m
sigma= 5.8*10^7;// in s/m
miu_c= 0.0032;// in m^2/v-sec
E= 20;//in mV/m
E=E*10^-3;//in V/m
e= 1.6*10^-19;// in C
// Part (a)
n= sigma/(e*miu_c);//in /m^3
disp(n,"Charge density per meter cube is : ")

// Part (b)
J= sigma*E;//in A/m^2
disp(J,"Current density in A/m^2 is : ")

// Part (c)
Area= %pi*d^2/4;// in area of cross-section of wire in m^2
I= J*Area;// in A
disp(I,"Current flowing in the wire in amp is : ")

// Part (d)
v= miu_c*E;// in m/sec
disp(v,"Electron drift velocity in m/sec is : ")
