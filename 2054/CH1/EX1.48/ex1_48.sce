//Exa:1.48
clc;
clear;
close;
P=25;//in KW
t=1.5;//in hours
P_L=sqrt((((1/(1-exp(-0.5/t)))*1.9)-0.9)*P^2);
disp(P_L,'Half hour rating of a 25KW Motor (in KW)=')