clc
mw=50; //kg/s
p1=10^5; //N/m^2
p2=4.2*10^5; //N/m^2
h=10.7; //m
d1=0.2; //m
d2=0.1; //m
v1=1/1000;
v2=1/1000;
g=9.81; //m/s^2

C1=mw*4/%pi/d1^2*v1;
C2=mw*4/%pi/d2^2*v2;
W=mw*[(p1*v1-p2*v2) + (g*(0-h))+(C1^2-C2^2)/2]/10^3;
disp("Capacity of electric motor")
disp(-W)
disp("kW")