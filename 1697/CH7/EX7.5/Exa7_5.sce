//Exa 7.5
clc;
clear;
close;
//given data :
f=1.2;//in GHz
f=f*10^9;//in Hz
BWFN=5;//in degree
c=3*10^8;//in m/s
lambda=c/f;//in meters
D=140*lambda/BWFN;//in meters
disp(D,"Diameter of a paraboloidal reflector in meters : ");