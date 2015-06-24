// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 5 Example 3")
R1=8.314;//gas constant in KJ/kg K
M=32;//molar mass for O2 
T1=(27+273);//initial temperature of O2 in K
p1=125;//initial pressure of O2 in Kpa
p2=375;//final pressure of O2 in Kpa
Cp=1.004;//specific heat of air at constant pressure in KJ/kg K
disp("gas constant for oxygen(R)in KJ/kg K")
disp("R=R1/M")
R=R1/M
disp("for reversible process the change in entropy may be given as")
disp("deltaS=(Cp*log(T2/T1))-(R*log(p2/p1))in KJ/kg K")
T2=T1;//isothermal process
deltaS=(Cp*log(T2/T1))-(R*log(p2/p1))
disp("so entropy change=deltaS in KJ/kg K")
deltaS
