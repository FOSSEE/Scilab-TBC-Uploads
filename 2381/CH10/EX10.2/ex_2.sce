//Example 2 // Velocity and wavelength
clc;
clear;
close;
//given data :
Y=8*10^10;// in N/m^2
p=5000;// in kg/m^3
v=sqrt(Y/p);
disp(v,"(1). The velocity,v(m/s) = ")
f=400;// in vibration/sec
lamda=v/f;
disp(lamda,"(2). The wavelength,(m) = ")
