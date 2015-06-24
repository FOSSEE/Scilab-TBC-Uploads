clc
R=287; //J/kg K
y=1.4;
p0=220*10^3; //N/m^2
T0=300; //K
V0=200; //m/s
C0=sqrt(y*R*T0);
rho_0=p0/R/T0;
disp("Stagnation pressure =")

disp("(i) Compressibility is neglected")
ps=(p0+rho_0*V0^2/2)/10^3;
disp("ps=")
disp(ps)
disp("kN/m^2")


disp("(ii) Compressibility is accounted for")
M0=V0/C0;

ps=(p0+rho_0*V0^2/2*(1+M0^2/4+(2-y)/24*M0^4))/10^3;
disp("ps=")
disp(ps)
disp("kN/m^2")