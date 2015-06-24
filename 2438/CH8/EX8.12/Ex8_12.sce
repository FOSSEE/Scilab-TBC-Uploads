//===========================================================================
// chapter 8 example 12

clc;
clear;

// Variable declaration
Jd  = 500;      // current density A/m^2
p   = 0.05      // resistivity in ohm-m
l   = 100*10^-6     // travel length m
ue  = 0.4;          // electron mobility m^2/Vs
e   = 1.6*10^-19;   // charge of electron in coulombs


// Calculations
ne  = 1/(p*e*ue);       //iin per m^3
vd  = Jd/(ne*e);            //drift velocity in m/s
t   = l/vd;                 //time teken in s

// result
mprintf('Drift velocity = %d m/s\n time = %e s',vd,t);

//=============================================================================
