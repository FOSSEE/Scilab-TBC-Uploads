clc;clear;
//Example 10.2

//calculations
amu=1.66*10^-27;//1 amu in kg
c=3*10^8;//speed of light in m/s
m=amu;
E=m*c^2;
kWh=1.6*10^-13;//conversion of kWh in J
E=E/kWh;
disp(E,'energy equivalence in MeV')