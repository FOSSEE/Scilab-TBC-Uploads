clc;
clear all;
ue=0.39;//electon mobility in m^2/V*s
uh=0.19;//hole mobility in m^2/V*s
ni=2.4e19;//intrisic carrier concentration in m^-3
e=1.6e-19;//charge of electron
sigma=ni*e*(ue+uh);//conductivity of germanium
disp('W^-1*m^-1',sigma,'conductivity of germanium is:')
