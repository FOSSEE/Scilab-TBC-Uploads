// Chapter 5 Example 7
//==============================================================================
clc;
clear;

// input data
// metallic iron changes from  BCC to FCC form at 910 degress
rb      = 0.1258*10^-9;     // atomic radius of BCC iron atom
rf      = 0.1292*10^-9;     // atomic radius of FCC iron atom

// Calculations

ab      = (4*rb)/(sqrt(3));  // lattice constant for BCC
Vbcc    = (ab^3)/2;          // volume occupied by one BCC atom
af      = (4*rf)/(sqrt(2))   // lattice constant for FCC
Vfcc    = (af^3)/4;          // volume occupied by one FCC atom
dv      = ((Vbcc-Vfcc)/Vbcc)*100        // percentage change in volume

// output
mprintf('During the structural change the percentage change in volume = %3.4f',dv);
//==============================================================================
