clc
m_f=0.03; // kg
rho_f=5100; // kg/m^3
d_l=0.3; // m
d_b=0.22; // m
H_tube=0.2; // m
Cd=0.6;
H=0.1; // m
g=9.81; // m/s^2
rho=1000; // kg/m^3

V_f=m_f/rho_f;

theta=2*atan((d_l-d_b)/2/H_tube);

m=Cd*H*tan(theta/2)*sqrt(8*V_f*g*rho*(rho_f-rho)*%pi);
disp("Mass flowrate =")
disp(m)
disp("kg/s")