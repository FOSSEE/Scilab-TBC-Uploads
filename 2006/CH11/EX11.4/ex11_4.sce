clc;
T2=373; // Temperature of CO2 gas in kelvin
p2=100; // Pressure of CO2 gas in atm
T1=0; // Reference state temperature in kelvin
// The crictical constants for CO2 are 
Tc=304.2; // Temperature in kelvin
Pc=72.9; // Pressure in atm
zc=0.275;
// Refer figure 11.7 for state definition
h1_0=((-3.74*T2)+((30.53/(100^0.5))*((T2^1.5)/1.5))-((4.1/100)*((T2^2)/2))+((0.024/(100^2))*((T2^3)/3)));
Tr=T2/Tc; Pr=p2/Pc; // Reduced properties
// From generalized chart figure 11.6
hR_Tc=10.09;
h1_2=hR_Tc*Tc;
M=44; // Molecular weight
h10=h1_0/M; h12=h1_2/M;
h373=h10-h12; // The required enthalpy of CO2 gas at 373 K and 100 atm
disp ("kJ/kg",h373,"The required enthalpy of CO2 gas at 373 K and 100 atm = ");
