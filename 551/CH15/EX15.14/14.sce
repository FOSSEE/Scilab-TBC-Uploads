clc
A=1*1.5; //m^2
ts=300; //0C
tf=20; //0C
h=20; //W/m^2 0C
Q=h*A*(ts-tf)/10^3; //kW
disp("Rate of heat transfer =")
disp(Q)
disp("kW")