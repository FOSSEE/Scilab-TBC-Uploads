clear;
clc;

// Stoichiometry
// Chapter 2
// Basic Chemical Calculations


// Example 2.12
// Page 23
printf("Example 2.12, Page 23 \n \n");

// solution

// (a)
printf("(a) \n \n")
// mass %
m1 = 100 //[kg] methanol (basis)
m2 = 64 //[kg] salicylic acid
m = m1+m2 // [kg] mass of solution
w1 = m2/m*100
w2 = 100-w1
printf("mass percent of salicylic acid is "+string(w1)+" and \nmass percent of methanol is "+string(w2)+". \n \n \n")

//(b)
printf("(b) \n \n")
//mole %
M1 = 32 // molar mass of methanol
M2 = 138 //molar mass of salicylic acid
n1 = m1/M1 //[kmol] methanol
n2 = m2/M2 //[kmol] salicylic acid
n = n1+n2
N1 = n1/n*100
N2 = n2/n*100
printf("Mole percent of methanol is "+string(N1)+" and \nMole percent of salicylic acid is "+string(N2)+".")
