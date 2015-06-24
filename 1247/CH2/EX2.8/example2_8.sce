clear;
clc;

// Stoichiometry
// Chapter 2
// Basic Chemical Calculations


// Example 2.8
// Page 21
printf("Example 2.8, Page 21 \n \n");

// solution
// CH.35O.35S.14
// mass %
C = 12.0107 //[kg] 
H = 1.00794*.35 // [kg]
O = 15.9994*.35// [kg]
S = 32.065*.14 //[kg]
m = C+H+O+S
m1 = (C/m)*100
m2 = (H/m)*100
m3 = (O/m)*100
m4 = (S/m)*100
printf("mass percentage of C is "+string(m1)+" \nmass percentage of H is "+string(m2)+" \nmass percentage of O is "+string(m3)+" \nmass percentage of S is "+string(m4)+" \n \n")
M = m/(1+.35+.35+.14)
printf("molar mass = "+string(M)+" kg/kmol.")
