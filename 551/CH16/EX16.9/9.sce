clc
V0=1000*1000/3600; //m/s
T0=320; //K
p_atm=98.1; //kN/m^2
p=9.81; //kN/m^2
p0=98.1-p;
R=287; //J/kg K
y=1.4;

C0=sqrt(y*R*T0);
M0=V0/C0;

disp("Stagnation pressure =")
ps=p0*(1+((y-1)/2*M0^2))^(y/(y-1));
disp(ps)
disp("kN/m^2")


disp("Stagnation temperature =")
Ts=T0*(1+((y-1)/2*M0^2));
disp(Ts)
disp("K")


disp("Stagnation density =")
rho_s=ps*10^3/R/Ts;
disp(rho_s)
disp("kg/m^3")

M=0.8;

CF=1+M0^2/4+(2-y)/24*M0^4;
disp("Compressibility factor")
disp(CF)