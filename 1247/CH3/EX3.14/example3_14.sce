clear;
clc;

// Stoichiometry
// Chapter 3
// Material Balances Without Chemical Reaction


// Example 3.14
// Page 73
printf("Example 3.14, Page 73 \n \n");

// solution

//using table 2.7 on page no 75
Rg = 8124*100/9448 // recovery of glycerine
Lg = (16+83)*100/9448 // loss of glycerine in waste
Reg = 100-Rg-Lg // recycle of glycerine
m1 = 238/8124 // NaCl in product
m2 = Rg*12/100 // glycerine in product
m3 = m1+m2 // total solute
n = m1*100/m3 // NaCl percent in total solute
printf("(a) \n \nrecovery percent of glycerine is "+string(Rg)+" \n \n \n(b) \n \npercent loss of glycerinr is "+string(Lg)+" \n \n \n(c) \n \nproduct contamination with respect to salt NaCl is "+string(n)+".")
