clc;
clear all;
disp("heat transfer rate, temperature")
r1=0.600/2;// m
r2=0.18/2;//m
D=1.8;//m
L=90;//m
tp1=180;// degree C
tp2=12;// degree C
k=0.45;// W/(m*C)

Sfc=2*3.1416*L/(acosh((D^2-r1^2-r2^2)/(2*r1*r2)));
Sfc
Q=k*Sfc*(tp1-tp2);

disp("W",Q,"Heat loss per meter length, Q =")
