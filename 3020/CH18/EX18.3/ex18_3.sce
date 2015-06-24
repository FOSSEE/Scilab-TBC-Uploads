clc;
clear all;
ue=0.39;//electon mobility in m^2/V*s
uh=0.19;//hole mobility in m^2/V*s
ni=2.5e19;//intrisic carrier concentration in m^-3
l=1e-2;//length in meter
w=1e-3;//width of germanium
t=1e-3;//thickness of germanium
A=w*t;//area of germanium
e=1.6e-19;
sigma=ni*e*(ue+uh);//conductivity of germanium
R=l/(sigma*A);//resistance of germanium
disp('ohm',R,'resistance of germanium is:')
