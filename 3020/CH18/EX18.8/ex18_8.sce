clc;
clear all;
T=300;//temperature in kelvin
rho=2.12;//resistivity in ohm*m
ue=0.36;//mobility of electron in m^2/(V*s)
uh=0.17;//mobility of hole in m^2/(V*s)
Kb=1.38e-23;//boltzman constant
e = 1.6e-19;
sigma=1/rho;//conductivity of Ge
ni=sigma/(e*(ue+uh));//intrinsic concentration
disp('',ni,'intrinsic concentration is:')
mo=9.1e-31;//mass of electron
me=0.5*mo;
mh=0.37*mo;
h=6.626e-34;//plank constant
x=(2*%pi*Kb*T*me/(h*h))^(3/2);//temporary variable
Nc=2*x;
Nv=2*(2*%pi*Kb*T/(h*h))^(3/2)*(mh)^(3/2);
Eg=2*Kb*T*log((Nc*Nv)^0.5/ni);
Eg1=Eg/(1.6e-19);
disp('eV',Eg1,'bandgap of Ge is:')


