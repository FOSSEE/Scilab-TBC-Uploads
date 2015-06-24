// Grob's Basic Electronics 11e
// Chapter No. 05
// Example No. 5_2
clc; clear;
// An R1 of 20 Ohms, an R2 of 40 Ohms, and an R3 of 60 Ohms are connected in parallel across the 120-V power line. Using Kirchhoff’s current law, determine the total current It.

// Given data

R1 = 20;      // Resistor 1=20 Ohms
R2 = 40;      // Resistor 2=40 Ohms
R3 = 60;      // Resistor 3=60 Ohms
Va = 120;     // Applied Voltage=120 Volts

I1 = Va/R1;
I2 = Va/R2;
I3 = Va/R3;

It = I1+I2+I3
disp (It,'The Total Current in the Mainline in Amps')
