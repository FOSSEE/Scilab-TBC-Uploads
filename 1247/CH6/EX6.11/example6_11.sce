clear;
clc;

// Stoichiometry
// Chapter 6
// Stoichiometry and Unit Operations


// Example 6.11
// Page 370
printf("Example 6.11, Page 370 \n \n");

// solution

// (a)
printf("(a) \n \n ")
// using fig 6.12
// peforming material balance at 290K
a1 = 5.76
b1 = 4.91
DCBs = b1*100/(a1+b1) // % of solid separated p-DCB
DCBr1 = DCBs*100/70 // recovery of p-DCB
printf("Percentage recovery of p-DCB = "+string(DCBr1)+". \n \n \n (b) \n \n ")

//(b)
//at 255K
a2 = 5.76
b2 = 10.22
DCBs = b2*100/(a2+b2)
DCBr2 = (DCBs*100)/70
Ar = DCBr2-DCBr1
printf("Additional recovery of p-DCB = "+string(Ar)+".")
