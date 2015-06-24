// Exa 4.28
clc;
clear;
close;
format('v',6)
// Given data
Z1= 3+4*%i;// in ohm
Z2= 6+8*%i;// in ohm
V= 230;// in V
I1= V/Z1;// in A
I2= V/Z2;// in A
I_T= I1+I2;// in A
phi= atand(imag(I_T),real(I_T));// in °
P= V*abs(I_T)*cosd(phi);//in V
disp("The value of current : ")
disp(abs(I_T),"The magnitude in A is : ")
disp(phi,"The phase angle in degree is : ")
disp(P,"The power drawn from the source in W is : ")
