clear;
clc;

// Stoichiometry
// Chapter 3
// Material Balances Without Chemical Reaction


// Example 3.8
// Page 64
printf("Example 3.8, Page 64 \n \n");

// solution

m = 1000 //[kg] mixed acid (basis)
// doing overall mass balance, H2SO4 balance and HNO3 balance
A = [1 1 1;.444 0 .98;.113 .9 0]
d = [1000;600;320]
x = A\d
printf("quantities of acids required are :\n  Spent = "+string(x(1,1))+"kg \n  HNO3 = "+string(x(2,1))+" kg\n  H2SO4 = "+string(x(3,1))+" kg.")
