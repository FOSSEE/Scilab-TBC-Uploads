//Exa 1.2
clc;
clear;
close;
//Given data
Io=10;//in uA
I=1;//in Ampere
ETA=2;//For Si
T=27;//in degree C
T=T+273;//in Kelvin
e=1.6*10^-19;//in Coulamb(electronic charge)
k=1.38*10^-23;//in J/K(Boltzman Constant)
//Formula : I=Io*(exp(%e*V/(ETA*k*T))-1)
V=(ETA*k*T/e)*log(I/(Io*10^-6)+1);//in Volt
disp(V,"Forward Voltage across the diode in Volt :");