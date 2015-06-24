// Grob's Basic Electronics 11e
// Chapter No. 04
// Example No. 4_3
clc; clear;
// Solve for Rt, I and the individual resistor voltage drops at R1, R2, R3.

// Given data

R1 = 10;     // Resistor 1=10 Ohms
R2 = 20;     // Resistor 2=20 Ohms
R3 = 30;     // Resistor 3=30 Ohms
Vt = 12;     // Applied Voltage=12 Volts

Rt = R1+R2+R3;
disp (Rt,'The combined series resistance in Ohms')

I = Vt/Rt;
disp (I,'The current in Amps')
disp ('i.e 200 mA')

V1 = I*R1
disp (V1,'The Voltage Drop of Resistor R1 in Volts')

V2 = I*R2
disp (V2,'The Voltage Drop of Resistor R2 in Volts')

V3 = I*R3
disp (V3,'The Voltage Drop of Resistor R3 in Volts')


