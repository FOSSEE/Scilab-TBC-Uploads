clear;
clc;

// Stoichiometry
// Chapter 2
// Basic Chemical Calculations


// Example 2.15
// Page 25
printf("Example 2.15, Page 25 \n \n");

// solution

//(CH2OH)3
M = 92 // molar mass of glycerin
C = 600 //[mg/l] glycerin conc.
TOC = (3*12/92)*600 //[mg/l]
// by combustion reaction we see 3.5 O2 is required for 1 mol of (CH2OH)3
ThOD = (3.5*32*600)/92 //[mg/l]
printf("TOC = "+string(TOC)+" mg/l\nThOD = "+string(ThOD)+" mg/l")
