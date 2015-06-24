// Exa 2.15
clc;
clear;
close;
// Given data
p= 0.98;// in bar
p= p*10^5;// in N/m^2
v=1000;// in m^3
T= 27+273;// in K
g= 9.8;
M=2;
Ro= 8314;// in J/kg-mole K
R=Ro/M;// in kg K
m= p*v/(R*T);// in kg
W= m*g;// in N
disp(W,"The load that can be lifted with the air of aerostat in N is : ")
