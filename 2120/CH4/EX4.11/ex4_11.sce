// Exa 4.11
clc;
clear;
close;
// Given data
T1 = 127;// in °C
T1 = T1 + 273;// in K
R = 287;
V1 = 300;// in m/s
p1 = 2;// in MPa
p2 = 0.5;// in MPa
p1 = p1 * 10^6;// in Pa
p2 = p2 * 10^6;// in Pa
C_P = 1.005*10^3;// in J/ kg-K
Gamma = 1.4;
V2 = sqrt(2 * C_P *T1 *{1-(p2/p1)^((Gamma-1)/Gamma)} + V1^2);// in m/s
disp(V2,"The exit velocity of air in m/s is : ");
m = 600;// in kg/hr
m = m / 3600;// in kg/sec
v1 = (R * T1)/p1;// in m^3 per kg
// m = (A1*V1)/v1 = (A2* V2)/v2
A1 = (m * v1)/V1;// in m^2
A1 = A1 * 10^6;// in mm^2
disp(A1,"Inlet area of the nozzle in square milimeter is : ");
T2 = T1*(p2/p1)^((Gamma-1)/Gamma);// in K
v2 = (R * T2)/(p2);// in m^3/kg
A2 = (m * v2)/V2;// in m^2
A2 = A2 * 10^6;// in mm^2
disp(A2,"Exit area of nozzel in square milimeter is : ");
