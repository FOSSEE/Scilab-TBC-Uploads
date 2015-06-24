clc
R=287; //J/kg K
y=1.4;
V0=1000*1000/3600; //m/s
p0=78.5; //kN/m^2
T0=265; //K

C0=sqrt(y*R*T0);
M0=V0/C0;

disp("(i) Stagnation pressure =")
ps=p0*(1+((y-1)/2*M0^2))^(y/(y-1));
disp(ps)
disp("kN/m^2")


disp("(ii) Stagnation temperature =")
Ts=T0*(1+((y-1)/2*M0^2));
disp(Ts)
disp("K")


disp("(iii) Stagnation density =")
rho_s=ps*10^3/R/Ts;
disp(rho_s)
disp("kg/m^3")