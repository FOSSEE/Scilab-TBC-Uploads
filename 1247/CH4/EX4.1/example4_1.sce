clear;
clc;

// Stoichiometry
// Chapter 4
// Material Balances involving Chemical Reaction


// Example 4.1
// Page 116
printf("Example 4.1, Page 116 \n \n");

// solution

// basis one day operation
// Cl2 is the limiting component
n1 = 4536/71 //[kmol] Cl2 charged
// 1mol MCA requires 1 mol Cl2, so
n2 = 5000/94.5 // [kmol] Cl2 used for MCA production
// 1 mol DCA requires 2 mol of Cl2
n3 = 263*2/129 //[kmol] Cl2 used for DCA production
n4 = n2+n3 // total Cl2 used
a = n4*100/n1 // conversion %age
b = n2*100/n4 // yield % of MCA
s = n2/n3
printf("Percentage conversion = "+string(a)+" \n \nPercentage yield of MCA = "+string(b)+" \n \nselectivity of MCA = "+string(s)+".")
