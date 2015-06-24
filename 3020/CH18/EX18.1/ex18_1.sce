clc;
clear all;
T=300;//temperature in kelvin
ue=0.4;//electon mobility in m^2/V*s
uh=0.2;//hole mobility in m^2/V*s
k=1.38e-23;//boltzman constant
h=6.626e-34;//planks constant
m0=9.1e-31;
e = 1.6e-19; // Charge of an electron
Eg=0.7;
mh=0.37*m0;
me=0.55*m0;
r = ((2*%pi*k*T)/(h^2))^1.5;// Temporary variable
s = exp((-Eg*e)/(k*T));// Temporary variable
ni=2*((me*mh)^(3/4))*r*s
disp('m^-3',ni,'the intrinsic consentration is:')
rho = ni*e*(ue+uh);// Intrinsic Conductivity
disp('1/(ohm.meter)',rho,'The intrinsic conductivity is')
p = 1/rho; // Intrinsic resistivity
disp('Ohm.meter',p,'The intrinsic resistivity is')
