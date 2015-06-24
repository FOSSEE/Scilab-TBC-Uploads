// Scilab code Ex6.14: Pg 222 (2008)
clc; clear;
Im1 = 6;   // Peak value of first phasor, A
Im2 = 8;   // Peak value of second phasor, A
Im3 = 4;   // Peak value of third phasor, A
H_C = Im1*cosd(0*180/%pi)+Im2*cosd(-%pi/2*180/%pi)+Im3*cosd(%pi/6*180/%pi); // Horizontal component of phasor sum, A
V_C = Im1*sind(0*180/%pi)+Im2*sind(-%pi/2*180/%pi)+Im3*sind(%pi/6*180/%pi); // Vertical component of phasor sum, A
Im = sqrt(H_C^2+V_C^2); // Peak value of phasor sum, V
phi = atan(V_C/H_C);   // Phase angle, rad
printf("\ni = %4.1fsin(wt%5.3f) amp", Im, phi);

// Result
// i = 11.2sin(wt-0.565) amp 
