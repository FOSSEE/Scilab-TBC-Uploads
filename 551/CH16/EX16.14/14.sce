clc
R=287; //J/kg K
y=1.4;
p_atm=100; //kN/m^2
p1=284+p_atm; //kN/m^2
T1=297; //K
D=0.02; //m

A2=%pi/4*D^2;
rho_1=p1*10^3/R/T1;

m_max=0.685*A2*sqrt(p1*10^3*rho_1);
disp("Maximum flow rate =")
disp(m_max)
disp("kg/s")