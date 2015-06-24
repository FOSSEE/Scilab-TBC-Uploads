clear;
clc;

// Stoichiometry
// Chapter 2
// Basic Chemical Calculations


// Example 2.7
// Page 20
printf("Example 2.7, Page 20 \n \n");

// solution

// (a)
printf("(a) \n \n")
// mass %
m1 = 600 //[kg] (NaCl)
m2 = 200 //[kg] (KCl)
m = m1+m2 // total mass
Wa = (m1/m)*100
Wb = (m2/m)*100
printf("mass percentage of NaCl is "+string(Wa)+" \nmass percentage of KCl is "+string(Wb)+" \n \n \n")
// (b)
printf("(b) \n \n")
//mol %
M1 = 23+35.5 // molar mass of NaCl
n1 = m1/M1 // no. of moles of NaCl
M2 = 39+35.5 // molar mass of KCl
n2 = m2/M2 // no. of moles of KCl
n = n1+n2
N1 = (n1/n)*100
N2 = (n2/n)*100
printf("mol percentage of NaCl is "+string(N1)+" \nmol percentage of KCl is "+string(N2)+" \n")
