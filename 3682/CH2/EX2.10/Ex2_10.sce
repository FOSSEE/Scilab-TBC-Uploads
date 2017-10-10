// Exa 2.10

clc;
clear;

// Given data

// A current mirrir as shown in Fig. 2.16
Ic = 1; // mA
Vcc = 10; // Volts
B = 125;
Vbe = 0.7; // Bolts

// Solution

// Case(1)- When Ic = 1mA.
printf(' From equations 2.67 and 2.68 we get R1 as - \n\n');
// Ic = (B/(B+2))*((Vcc-Vbe)/R1);
// Therefore
R1 = (B/(B+2))*((Vcc-Vbe)/Ic);
printf(' The value of R1 when Ic = 1 mA is R1 = %.2f kΩ. \n',R1);

// Now case(2)- when Ic = 10 μA.
Ic1 = 10*10^-3; // in mA
R2 = (B/(B+2))*((Vcc-Vbe)/Ic1);
printf(' The value of R1 when Ic = 10 μA is R1 = %d kΩ. \n',R2);
