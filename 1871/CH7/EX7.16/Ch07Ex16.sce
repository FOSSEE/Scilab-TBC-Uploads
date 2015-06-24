// Scilab code Ex7.16: Pg 315 (2008)
clc;clear;
m1 = 12;    // Mass of first trace, unit
m2 = 16;    // Mass of second trace, unit
d = 4.8;    // Distance between the traces, cm
D = [8.4, -8.4];    // Distance of the mark from the trace of mass 16
x = poly(0, 'x');
x = roots(m1*x-m2*(x-d));    // The distance of the mark from the trace of mass 16
M = m2*(x+D)/x;    // Mass of the particle whose trace is at a distance of 8.4 cm from the trace of mass 16
printf("\nThe mass of the particle whose trace is at a distance of 8.4 cm from the trace of mass 16 = %d or %d", M(1), M(2));

// Result 
// The mass of the particle whose trace is at a distance of 8.4 cm from the trace of mass 16 = 23 or 9 