clc;
clear all;
ue=0.4;//electon mobility in m^2/V*s
uh=0.2;//hole mobility in m^2/V*s
ni=2.1e19;//intrisic carrier concentration in m^-3
e=1.6e-19;//charge of electron
p=4.5e23;//density of hole
sigma=ni*e*(ue+uh);//conductivity of boron
disp('ohm^-1 m^-1',sigma,'conductivity of semiconductor is:')
sigma1=p*e*uh;
disp('ohm^-1 m^-1',sigma1,'conductivity of boron dopped semiconductor is:')

