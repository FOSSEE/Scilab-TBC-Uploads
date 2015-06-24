// Grob's Basic Electronics 11e
// Chapter No. 05
// Example No. 5_4
clc; clear;
// Three parallel branch currents are 0.1 A, 500 mA, and 800 A. Using Kirchhoff’s current law, calculate It.


// Given data

I1 = 0.1;              // Branch Current 1=0.1 Amps
I2 = 0.5;              // Branch Current 2=500m Amps
I3 = 800*10^-6;        // Branch Current 3=800u Amps

It = I1+I2+I3;
disp (It,'The Total Current in Amps')
disp ('i.e 600.8 mAmps')
