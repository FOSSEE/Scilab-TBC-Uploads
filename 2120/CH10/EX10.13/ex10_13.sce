// Exa 10.13
clc;
clear;
close;
// Given data
Q = 1100;// in kW
m=1;// in kg
p1 = 15;// in bar
p1 = p1 * 10^5;// in Pa
p1 = p1 * 10^-3;// in kPa
p2 = 0.05 * 10^2;// in kPa
v1 = 0.16;// m^3 per kg
v2 = 26;// in m^3 per kg
V1 = 110;// in m per s
V2 = 120;// in m per s
u1 = 2935;// in kJ per kg
u2 = 1885;// in kJ per kg
g = 9.8;
z1 = 0;
z2 = 0; 
// Formula Q-W= m*{(u2 - u1) + (p2*v2-p1*v1)+1/2*(V2^2-V1^2)+g*(z2 - z1)}
W =Q-m*{(u2 - u1) + (p2*v2-p1*v1)+1/2*(V2^2-V1^2)+g*(z2 - z1)};// in kW
disp(W,"Work output per kg in kW is");
SteamFlowRate = Q / W;// in kg/sec
SteamFlowRate = SteamFlowRate * 3600;// in kg per hr
disp(SteamFlowRate,"Steam flow rate in kg/hr is");
