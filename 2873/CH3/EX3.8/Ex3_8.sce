// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 3 Example 8")
T1=(627+273);//initial temperature of air in nozzle in K
T2=(27+273);//temperature at which air leaves nozzle in K
Cp=1.005*10^3;//specific heat at constant pressure in J/kg K
disp("applying steady flow energy equation with inlet and exit states as 1,2 with no heat and work interaction and no change in potential energy")
disp("h1+C1^2/2=h2+C2^2/2")
disp("given that C1=0,negligible inlet velocity")
disp("so C2=sqrt(2(h1-h2))=sqrt(2*Cp*(T1-T2))")
disp("exit velocity(C2)in m/s")
C2=sqrt(2*Cp*(T1-T2))
disp("so exit velocity=1098.2 m/s")

