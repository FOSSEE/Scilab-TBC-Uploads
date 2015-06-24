clc;
clear all;
ue=0.13;//electon mobility in m^2/V*s
uh=0.05;//hole mobility in m^2/V*s
ni=1.5e16;//intrisic carrier concentration in m^-3
e=1.6e-19;//charge of electron
sigma=ni*e*(ue+uh);//conductivity of germanium
disp('ohm^-1 m^-1',sigma,'conductivity of semiconductor is:')
