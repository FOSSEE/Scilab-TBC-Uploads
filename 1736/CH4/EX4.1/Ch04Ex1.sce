// Scilab Code Ex4.1: Page-112 (2006)
clc; clear;
m = 9.1e-031;   // Mass of an electron, kg
e = 1.6e-019;   // Charge on an electron, C
n = 8.5e+028;   // Concentration of electron in Cu, per metre cube
rho = 1.7e-08;  // Resistivity of Cu, ohm-m
t = m/(n*e^2*rho);  // Collision time for an electron in monovalent Cu, s
printf("\nThe collision time for an electron in monovalent Cu = %3.1e s", t);

// Result 
// The collision time for an electron in monovalent Cu = 2.5e-014 s 
