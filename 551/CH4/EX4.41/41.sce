clc
m=220/60; //kg/s
C1=320; //m/s
p1=6*10^5; //N/m^2
u1=2000*10^3; //J/kg
v1=0.36; //m^3/kg
C2=140; //m/s
p2=1.2*10^5; //N/m^2
u2=1400*10^3; //J/kg
v2=1.3; //m^3/kg
Q=100*10^3; //J/s
W=(m*[(u1-u2)+ (p1*v1 - p2*v2) + (C1^2-C2^2)/2] -Q)/10^6;
disp("power capacity of the system = ")
disp(W)
disp("MW")