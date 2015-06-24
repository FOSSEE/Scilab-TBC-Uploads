clear;
clc;

// Stoichiometry
// Chapter 2
// Basic Chemical Calculations


// Example 2.25
// Page 40
printf("Example 2.25, Page 40 \n \n");

// solution

p = 4 //[bar]
T = 773.15 //[K]
R = .083145
V = R*T/p // [l/mol] molar volume
printf("Molar volume = "+string(V)+" l/mol.\n \n \n")
 // using appendix III
 // calculating Tc and Pc of different gases according to their mass fractions
Tc1 = .352*32.20 // H2
Tc2 = .148*190.56 // methane
Tc3 = .128*282.34 //ethylene
Tc4 = .339*132.91 // CO
Tc5 = .015*304.10 // CO2
Tc6 = .018*126.09 // N2
Tc = Tc1+Tc2+Tc3+Tc4+Tc5+Tc6 // Tc of gas
 // similarly finding Pc
Pc1=.352*12.97 
Pc2=.148*45.99
Pc3=.128*50.41
Pc4=.339*34.99
Pc5=.015*73.75
Pc6=.018*33.94
Pc=Pc1+Pc2+Pc3+Pc4+Pc5+Pc6 // Pc of gas
a = (27*R^2*Tc^2)/(64*Pc) // [bar/mol^2]
b = (R*Tc)/(8*Pc)  // l/mol
// substituting these values in vanderwall eq and solving by Newton Rhapson method we get
V = 15.74 // [l/mol]
printf("by Vanderwall eq molar volume = "+string(V)+" l/mol")
