//Example 3 // Velocity and wavelength
clc;
clear;
close;
//given data :
Y=7*10^10;// in N/m^2
p=2.8*10^3;// in kg/m^3
v=sqrt(Y/p);
disp(v,"(1). The velocity,v(m/s) = ")
f=500;// in vibration/sec
lamda=v/f;
disp(lamda,"(2). The wavelength,(m/s) = ")
