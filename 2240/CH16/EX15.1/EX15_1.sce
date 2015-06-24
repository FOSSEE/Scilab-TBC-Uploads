// Grob's Basic Electronics 11e
// Chapter No. 15
// Example No. 15_1
clc; clear;
// A sine wave of voltage varies from zero to a maximum of 100 V. How much is the voltage at the instant of 30° of the cycle? 45°? 90°? 270°?

// Given data

Vm = 100;       // Vm=100 Volts
t1 = 30;        // Theta 1=30°.
t2 = 45;        // Theta 2=45°.
t3 = 90;        // Theta 3=90°.
t4 = 270;       // Theta 4=270°.

v1 = Vm*sind(t1);
disp (v1,'The Voltage at 30° in Volts')

v2 = Vm*sind(t2);
disp (v2,'The Voltage at 45° in Volts')

v3 = Vm*sind(t3);
disp (v3,'The Voltage at 90° in Volts')

v4 = Vm*sind(t4);
disp (v4,'The Voltage at 270° in Volts')
