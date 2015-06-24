// find decimal equivalent of binary input and output voltage of the converter
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 20-6, page 762

clear; clc; close;

// Given data
D0=1;// binary input 
D1=0;// binary input 
D2=0;// binary input 
D3=1;// binary input 
Vref=5;// in volts 

// Calculations
BIN=(D0*2^0)+(D1*2^1)+(D2*2^2)+(D3*2^3);// decimal equivalent of binary input
Vout=-(BIN*2*Vref/(2^4));// output voltage in volts
disp(BIN,"decimal equivalent of binary input=")
disp("Volts",Vout,"output voltage=")

// Result
// decimal equivalent of binary input 1001 is 9
// Output voltage of the convertor is -5.625 Volts