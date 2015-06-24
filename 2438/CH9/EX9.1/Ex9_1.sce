//=========================================================================================
// chapter 9 example 1
clc
clear

// Variable declaration
F   = 8482;     // Tensile force in newtons
lo  = 0.30;     // length of steel wire in cm
Y   = 207*10^9; // Youngs modulus of steel Gpa
r   = 3*10^-3;  // radius of steel wire  in m
v   = 0.30;     // poisson ratio

// Calculations

dl  = (F*lo)/(Y*%pi*r^2);       // elongation in mm
e1  = dl/lo                     // longitudanl strain 
e2  = v*e1                      // lateral strain 
dr  = e2*r;                     // lateral contraction in m
 
// Result
mprintf('Elongation = %3.3f mm\n Lateral contraction = %3.1f um',dl/10^-3,dr/10^-6);

//=============================================================================================
