clc;
p=0.15; // Pressure of Freon-12 gas in MPa
T1=10; // Temperature of Freon-12 gas in degree celcius
T2=35; // Temperature of Freon-12 gas in degree celcius
h1=196.762; // Specific enthalpy of Freon-12 from table at 1 in kJ/kg 
h2=69.49; // Specific enthalpy of Freon-12 from table at 2 in kJ/kg 
h3=178.54; // Specific enthalpy of Freon-12 from table at 3 in kJ/kg 
// For solving Conservation of mass and SSSF energy equations
A=[1 -1; h3 -h2];
B=[1 ; h1];
M=A\B;
disp ("kg/s",M(1),"Mass of saturated vapour at 0.15 MPa = ","kg/s",M(2),"Mass of saturated liquid at 35 oC = ");
