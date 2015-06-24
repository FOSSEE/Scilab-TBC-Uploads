//Example 2.42: Resistance
clc;
clear;
close;
//given data :
f=50;/// in Hz
r=2000;// in ohm
L=0.5;// in H
Zm=sqrt(r^2+(2*%pi*f*L));
V=100;// in V
im=V/Zm;
Rs=(500-(im*Zm))/im;
disp(Rs,"Series resistance,Rs(ohm) = ")
//answer is wrong in the textbook
