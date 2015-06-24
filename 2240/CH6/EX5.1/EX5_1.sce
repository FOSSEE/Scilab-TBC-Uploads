// Grob's Basic Electronics 11e
// Chapter No. 05
// Example No. 5_1
clc; clear;
// Solve for branch currents I1 and I2.

R1 = 1*10^3;    // Resistor 1=1*10^3 Ohms
R2 = 600;       // Resistor 2=600 Ohms
Va = 15;        // Applied Voltage=15 Volts

I1 = Va/R1;
disp (I1,'The Current Resistor R1 in Amps')
disp ('i.e 15 mAmps')

I2 = Va/R2;
disp (I2,'The Current Resistor R2 in Amps')
disp ('i.e 25 mAmps')
