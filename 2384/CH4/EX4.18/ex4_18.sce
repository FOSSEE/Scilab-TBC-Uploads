// Exa 4.18
clc;
clear;
close;
format('v',6)
// Given data
V= 68+154*%i;// in V
I1= 10+14*%i;// in A
I2= 2+8*%i;// in A
I= I1+I2;// in A
phi= atand(imag(V),real(V))-atand(imag(I),real(I));// in °
disp(phi,"The phase angle in ° is : ")
disp("The power factor is : "+string(cosd(phi))+" lag")
