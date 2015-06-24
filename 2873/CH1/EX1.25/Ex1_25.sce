// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh,Chapter 1,Example 25")
m1=2;//mass of H2 in kg
m2=3;//mass of He in kg
T=100;//temperature of container in k
Cp1=11.23;//specific heat at constant pressure for H2 in KJ/kg k
Cp2=5.193;//specific heat at constant pressure for He in KJ/kg k
disp("since two gases are non reacting therefore specific heat of final mixture(Cp)in KJ/kg k can be obtained by following for adiabatic mixing")
disp("so the specific heat at constant pressure(Cp)in KJ/kg k")
disp("Cp=((Cp1*m1)+Cp2*m2)/(m1+m2)")
Cp=((Cp1*m1)+Cp2*m2)/(m1+m2)
