clc;
clear all;
ue=3900;//electon mobility in cm^2/V*s
uh=1900;//hole mobility in cm^2/V*s
ni=2.15e13;//intrisic carrier concentration in cm^-3
e=1.6e-19;//charge of electron
sigma=ni*e*(ue+uh);//conductivity of germanium
disp('ohm^-1 cm^-1',sigma,'conductivity of semiconductor is:')
rho=1/sigma;
disp('ohm cm',rho,'ressistivity of semiconductor is')
//Slight variation in answer than book.. there is mistake in book.. checked in calculator also..
