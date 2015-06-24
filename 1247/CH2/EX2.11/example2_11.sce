clear;
clc;

// Stoichiometry
// Chapter 2
// Basic Chemical Calculations


// Example 2.11
// Page 22
printf("Example 2.11, Page 22 \n \n");

// solution

Ca = 40.078 // at. wt of Ca
F = 18.9984032 // at wt of F
M1 = 3*Ca +2*(30.97762+(4*15.9994)) // molar mass of Ca3PO4
M2 = Ca +12.0107+3*15.9994 // molar mass of CaCO3
M3 = Ca+2*F // molar mass of CaF2
m1 = 800 //[mg] Ca3PO4
m2 = 200 //[mg] CaCO3
m3 = 5 //[mg] CaF2
n1 = ((3*Ca)/M1)*m1+(Ca/M2)*m2+(Ca/M3)*m3 // [mg] total Ca ions
n2 = (F/M3)*2*5 //[mg] total F ions
printf("Total no. of Ca+ ions is "+string(n1)+" and \ntotal no. of F- ions is "+string(n2)+".")
