// Scilab Code Ex4.2: Page-112 (2006)
clc; clear;
m = 9.1e-031;   // Mass of an electron, kg
e = 1.6e-019;   // Charge on an electron, C
n = 1e+029;   // Concentration of electron in material, per metre cube
rho = 27e-08;  // Resistivity of the material, ohm-m
tau = m/(n*e^2*rho);  // Collision time for an electron in the material, s
v_F = 1e+08;    // Velocity of free electron, cm/s
lambda = v_F*tau;   // Mean free path of electron in the material, cm
printf("\nThe collision time for an electron in monovalent Cu = %3.1e s", tau);
printf("\nThe mean free path of electron at 0K = %3.1e cm", lambda);

// Result 
// The collision time for an electron in monovalent Cu = 1.3e-015 s
// The mean free path of electron at 0K = 1.3e-007 cm 

