// Chapter 10 example 14
//------------------------------------------------------------------------------
clc;
clear;
//Given data
Te      = 4      // Expanded pulse width in usec
f1      = 50     // RF freq in Mhz
f2      = 70     // RF freq in Mhz

// Calculations
B       = f2 - f1;      // Signal bandwidth
Tc      = 1/B;          // Compressed pulse width in us
CR      = Te/Tc         // compression ratio

// Output
mprintf('Compression Ratio = %d\n Width of compressed pulse = %3.2f us',CR,Tc);
//-------------------------------------------------------------------------------
