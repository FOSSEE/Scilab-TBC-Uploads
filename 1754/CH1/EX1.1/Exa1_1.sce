//Exa 1.1
clc;
clear;
close;
//Given data
I=40;//in mA
V=0.25;//in Volt
T=20;//in degree C
T=T+273;//in Kelvin
ETA=1;//For Ge
e=1.6*10^-19;//in Coulamb(electronic charge)
k=1.38*10^-23;//in J/K(Boltzman Constant)
//Formula : I=Io*(exp(%e*V/(ETA*k*T))-1)
y=(e*V/(ETA*k*T));//Assumed
y=round(y);
Io=I*10^-3/(exp(y)-1);//in mA
disp(Io*10^6,"Reverse saturation current in micro Ampere : ");
