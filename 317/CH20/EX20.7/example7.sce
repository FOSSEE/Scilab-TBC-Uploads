// find  closed loop output impedance,short loaded current and voltage gain of the circuit
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 20-7, page 764

clear; clc; close;

// Given data
R1=10^3;// in ohms
R2=51*10^3;// in ohms
Avol=100000;// Avol of 741C
zoutol=75;// open-loop output impedance in ohms
Bdc=125;// current gain
Isc=25*10^-3;// short-load current in amperes

// Calculations
Av=-R2/R1;// voltage gain
B=R1/(R1+R2);//feedback fraction
zoutcl=zoutol/(1+(Avol*B));// closed-loop output impedance in ohms
Imax=Bdc*Isc;// boosted value of short loaded current in amperes
disp("ohms",zoutcl,"Closed loop output impedance=")
disp(Av,"Voltage gain=")
disp("amperes",Imax,"Short-load current=")

// Result
// Closed loop output impedance is 0.039 ohms
// Voltage gain is -51
// Short-load current is 3.13 Amperes