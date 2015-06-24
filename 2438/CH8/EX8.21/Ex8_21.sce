//=============================================================================
// Chapter 8 example 21

clc;
clear;

// Variable declaration
p   = 0.00893;      // resistivity  in ohm-m  
Hz  = 0.5;          // field in weber/m^2
Rh  = 3.66*10^-4;   // hall co-efficient hall coefficient in m^3

// Calculations

u   = Rh/p;                 //mobility of charge cerrier in m^2*(V^-1)*s^-1
theta_h = (atan(u*Hz))*(180/%pi);      // hall angle in degrees

// Result
mprintf('Hall angle = %3.4f degrees',theta_h);

//=============================================================================
