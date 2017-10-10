clc;
clear all;
disp("Heat leakage rate")
r2=1.4/2;//m
r1=r2-90/1000;//m
delT=220;//degree C
k=0.083;// W/(m*C)
Q=4*3.1416*k*r1*r2*delT/(r2-r1);
disp("W",Q,"Rate of heat leakage Q =") 
