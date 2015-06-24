// Chapter 6 example 18
//------------------------------------------------------------------------------
clc;
clear;
// Given data from fig
R_a = 1000;     // resistance shown in fig a
W1  = 0.15*10^-3 // width of geometry fig 6.72a
L1  = 3*10^-3    // Length of geometry fig 6.72a
W2  = 75*10^-6   // width of geometry fig 6.72b
L2  = 1500*10^-6 // Length of geometry fig 6.72b
t1  = 10*10^-6   // thickness of geometry fig 6.72a
t2  = 20*10^-6   // thickness of geometry fig 6.72b

//R1  = ρs1*(L1/W1)  // resistor geometry of fig 6.72a
//ρs1 = (R1*W1)/L1 
ps1   = (R_a*W1)/L1  // sheet resistivity of geometry of fig 6.72a
p     = ps1*t1;     // resistivity
ps2   = p/t2;       // sheet resistivity of geometry of fig 6.72b
R2    = ps2*(L2/W2); // resistance of geometry of fig 6.72b

// Output
mprintf('For Geometry in Fig 6.72b\n sheet resistivity = %3.0f Ω/□\n Resistance = %d Ω',ps2,R2)
//------------------------------------------------------------------------------
