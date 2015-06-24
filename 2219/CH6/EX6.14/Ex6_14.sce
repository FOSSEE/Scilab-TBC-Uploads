// Chapter 6 example 14
//------------------------------------------------------------------------------
clc;
clear;
// Given data
gm      = 50*10^-3;       // conductance in mho
cgs     = 0.6*10^-12;    // gate to source capacitance
cgd     = 0.015*10^-12;  // gate to drain capacitance
Rg      = 3;             // gate resistance in ohm
Rs      = 2;             // source resistance in ohm
Ri      = 2.5;           // intrinsic channel resistance
Rds     = 400;           // drain to source resistance

// Calculations
fT      = gm/(2*%pi*cgs);   // device's fT
t3      = 2*%pi*Rg*cgd;
r1      = (Rg+Rs+Ri)/Rds;
fmax    = fT/(2*sqrt(r1 + (fT*t3)));    // max usable frequency
if fmax>40*10^9 then
    mprintf('Operation at 40 GHz is Theoretically possible\n');
end

// Output
mprintf(' fT = %3.1f Ghz\n fmax = %3.1f',fT/10^9,fmax/10^9 )
