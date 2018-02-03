// Exa 17.19

clc;
clear;

// Given

// A Capacitive Transducer
d = 2.5; // plate separation in mm
A = 600; // Area (in mm^2)
P = 8*10^5; // Pressure applied in N/m^2
x = 0.5; // deflection produced in mm
C = 400*10^-12; // Capacitence in farad

// Solution

// Since, C = e*A/d
 e =C*d/A;

printf('Since we have to find capacitence when no pressure is applied. At that time plate separation = %d mm \n', d-x);

d1 = d-x; // plate separation(mm) after pressure applied 
C1 = e*A/d1;

printf(' The value of capacitence, C with d = 2mm  = %d micro farad \n', C1*10^12);
