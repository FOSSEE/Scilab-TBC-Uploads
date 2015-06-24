// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 9, Example 7")
//A heated nickel plate at temprature (T1)=110°C is submereged in water at one atmospheric pressure.
T1=110;
//For nucleate boiling coefficient(csf=0.006) and n=1
csf=0.006;
n=1;
//For saturated water at one atmospheric pressure,density of liquid(rhol=960kg/m^3),vapour density(rhov=0.60kg/m^3)
//enthalpy of vaporisation(hfg=2.26*10^6J/kg),surface tension(sigma=0.055N/m),saturation temprature(T2)=100°C
T2=100;
rhol=960;
rhov=0.60;
hfg=2.26*10^6;
sigma=0.055;
//g is acceleration due to gravity =9.81m/s^2
g=9.81;
//We take specific heat of liquid(cpl=4.216kJ/(kg*K)),prandtl number of liquid(Prl=1.74),viscosity of liquid(mul=2.82*10^-4kg/(m*s))
cpl=4.216*10^3;
Prl=1.74;
mul=2.82*10^-4;
//The heat flux q is given by expression q=(mul*hfg)*[((rhol-rhov)*g)/sigma]^(1/2)*[(cpl*(T1-T2))*(csf*hfg*prl^n)]^3 
disp("Heat flux q in W/m^2 is")
q=(mul*hfg)*[((rhol-rhov)*g)/sigma]^(1/2)*[(cpl*(T1-T2))/(csf*hfg*Prl^n)]^3 
disp("The peak heat flux for water at one atmospheric pressure is qc=1.24*10^6(found in example 9.6).Since q<qc,The regime of boiling is nucleate.")














