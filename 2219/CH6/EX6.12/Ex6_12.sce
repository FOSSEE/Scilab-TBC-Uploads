// Chapter 6 example 12
//------------------------------------------------------------------------------
clc;
clear;
// Given data
fT      = 10;       // ft specification of BJT
f_a     = 2;        // operating freq in Ghz case a
f_b     = 10;       // operating freq in Ghz case b

// calculations
hFE_a   = fT/f_a;     
hFE_b   = fT/f_b;

// Output
mprintf('case a:\n  hFE = %d\n case b:\n  hFE = %d\n',hFE_a,hFE_b);
//------------------------------------------------------------------------------    
