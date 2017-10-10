clc; funcprot(0);
//Example 9.2 Biot Savart's Law

// Initialisation of variables
T = 500;
PB = 2;
BA1 = 3;

// Calculations
theta1 = atan(PB/BA1);
theta2  = %pi/2;
R = PB;
Vt = (T/(4*%pi*R))*(cos(theta1)-cos(theta2));

//Results 
disp(Vt,"Velocity at point P (ft/sec):");