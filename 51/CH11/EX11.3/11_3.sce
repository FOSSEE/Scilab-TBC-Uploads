clc;
clear;
T=0;//degree C
R=286.9;//J/(kg*K)
k=1.401;
c=(R*(T+273.15)*k)^0.5;//m/s
disp("m/sec",c,"The speed of sound for air at 0 degree C =")
