clc;
p1=1.4; // Pressure at state 1 in bar
T1=310; // Temperature at state 1 in kelvin
rp=5; // Pressure ratio
Tmax=1050; // Maximum temperatuer in kelvin
WN=3000; // Net output in kW
Cp=1.005; // Specific heat at constant pressure in kJ/kg K
r=1.4; // Specific heat ratio
R=287; // Characteristic gas constant in J/kg K

T3=Tmax;
T2=T1*(rp)^((r-1)/r); // Temperature at the state 2
T4=T3/(rp)^((r-1)/r); // Temperature at the state 4
T5=T4; // As regenerator effectiveness in 100 %
m=WN/(Cp*((T3-T4)-(T2-T1))); // mass flow rate of air
eff=(T3-T4-T2+T1)/(T3-T5); // Efficiency of a cycle
disp ("%",eff*100,"(i). Thermal efficiency of the cycle = ");
disp ("kg/min   (roundoff error)",m*60,"(ii). The mass flow rate of air per minute = ");
