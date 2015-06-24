clc
R=287; //J/kg K
y=1.4;
p1=2500*10^3; //N/m^2
T1=293; //K
p2=1750*10^3; //N/m^2

rho_1=p1/R/T1;

V2=sqrt(2*y/(y-1)*p1/rho_1*(1-(p2/p1)^((y-1)/y)));
disp("Velocity of air =")
disp(V2)
disp("m/s")