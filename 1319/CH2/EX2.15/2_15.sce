// To find current across 2ohm resistor using nortons theorem

clc;
clear;

Zl=2; // Resistor Across AB

// Voltage Sources
V1=20;
V2=10;

//Resistances in order as seen from 20 V side exculding the resistance between A and B
R1=2;
R2=2;
R3=2;
R4=4;
R5=4;

Reff=R4*R5/(R4+R5); // Effective resistance of R4 and R5 (Parallel)
Rt1=Reff+R3; // Effective Resistance on right side of AB
Rt2=R1+R2; // Effective Resistance on left side of AB
Zth=Rt1*Rt2/(Rt1+Rt2);

// Using superpostion theorem
Iab1=V1/(R1+R2); // Current supplied to AB from 20V source
I1=V2/(R4+(R3*R5/(R3+R5)));// Current supplied from 10V source to the network
Iab2=I1*(R5/(R3+R5)); // Current supplied to AB from 10V Source

Iab=Iab1+Iab2; // Current Source

I=Iab*(Zth/(Zth+Zl));

printf('The current through branch AB flowing in the 2 ohm resistor = %g A\n',I)





