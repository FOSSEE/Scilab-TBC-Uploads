// Scilab code Ex6.13: Pg 221 (2008)
clc; clear;
omega = 314;    // Angular frequency of voltage, rad per sec
Vm1 = 25;   // Peak value of first phasor, V
Vm2 = 15;   // Peak value of second phasor, V
H_C = Vm1*cosd(%pi/3*180/%pi)+Vm2*cosd(-%pi/6*180/%pi); // Horizontal component of phasor sum, V
V_C = Vm1*sind(%pi/3*180/%pi)+Vm2*sind(-%pi/6*180/%pi); // Vertical component of phasor sum, V
Vm = sqrt(H_C^2+V_C^2); // Peak value of phasor sum, V
phi = atan(V_C/H_C);   // Phase angle, degrees
printf("\nv = %5.2fsin(%3dt + %5.3f) volt", Vm, omega, phi);

// Result
// v = 29.15sin(314t + 0.507) volt 
