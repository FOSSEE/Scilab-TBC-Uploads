//Caption:Find the new speed as a percentage of the original speed
//Exa:2.47
clc;
clear;
close;
V=400;//in volts
R_f=200;//in ohms
I_1=25;//in amperes
I_f=V/R_f;
I_a1=I_1-I_f;
x=(-V+sqrt(V^2+4*345*400))/(2*345);
disp(x*100,'New Speed is= ');
disp('percent of original speed')