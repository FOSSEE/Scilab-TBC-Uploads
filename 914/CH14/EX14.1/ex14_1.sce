clc;
warning("off");
printf("\n\n example14.1 - pg726");
// given
T=40+273.15;  //[K] - temperature
P=1;  //[atm] - pressure
sigma=3.711*10^-10;  //[m]
etadivkb=78.6;  //[K]
A=1.16145;
B=0.14874;
C=0.52487;
D=0.77320;
E=2.16178;
F=2.43787;
Tstar=T/(etadivkb);
// using the formula si=(A/(Tstar^B))+(C/exp(D*Tstar))+(E/exp(F*Tstar)
si=(A/(Tstar^B))+(C/exp(D*Tstar))+(E/exp(F*Tstar));
M=28.966;  //[kg/mole] - molecular weight
// using the formula mu=(2.6693*(10^-26))*(((M*T)^(1/2))/((sigma^2)*si))
mu=(2.6693*(10^-26))*(((M*T)^(1/2))/((sigma^2)*si));
printf("\n\n The viscosity of air is \n mu=%eNs/m^2=%fcp",mu,mu*10^3);
