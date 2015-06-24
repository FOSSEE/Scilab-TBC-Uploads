clc;
p=1; // pressure inside piston cylinder arrangement in MPa
// stae 1 = saturated liquid
// state 2 = saturated vapour
// state 3 = superheated vapour
v1=0.001127; // specific volume at state 1 in m^3/kg
v2=0.19444; // specific volume at state 2 in m^3/kg
v3=0.4011; // specific volume at state 3 in m^3/kg
u1=761.68; // specific internal energy at state 1 in kK/kg
u2=2583.6; // specific internal energy at state 2 in kK/kg
u3=3296.8; // specific internal energy at state 3 in kK/kg
h1=762.81; // specific enthalpy at state 1 in kJ/kg
h2=2778.1; // specific enthalpy at state 2 in kJ/kg
h3=3697.9; // specific enthalpy at state 3 in kJ/kg
w12=p*10^3*(v2-v1); // Work done during process 1-2
w23=p*10^3*(v3-v2); // Work done during process 2-3
wtotal=w12+w23; // Total work done
disp ("kJ/kg",wtotal,"Work done = ");
// Calculation of heat transfer
// Method I
q12=(u2-u1)+w12; // Heat transfer during process 1-2
q23=(u3-u2)+w23; // Heat transfer during process 2-3
qtotal=q12+q23; // Total Heat transfer
disp ("kJ/kg",qtotal,"Heat Transfer = ","Method I","Calculation of Heat Transfer");
// Method II
q12=h2-h1; // Heat transfer during process 1-2
q23=h3-h2; // Heat transfer during process 2-3
qtotal=q12+q23; // Total Heat transfer
disp ("kJ/kg",qtotal,"Heat Transfer = ","Method II");
