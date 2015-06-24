clear;
clc;

// Stoichiometry
// Chapter 6
// Stoichiometry and Unit Operations


// Example 6.7
// Page 361
printf("Example 6.7, Page 361 \n \n");

// solution

// referring to fig 6.9
//basis 1000kg/h halibut livers
F = 1000 //kg/h
OILin = F*.257
Sin = F-OILin // solid in the charge
U = .23*Sin
OILu = U*.128
Eu = U-OILu // ether in underflow
R = OILin-OILu //kg/h   recovery of oil
p = R*100/OILin
O = R/.7 
Eo = O-R
Et = Eu+Eo
printf(" Flow rate of ether to the system = "+string(Et)+" kg/h \n and percentage of recovery oil = "+string(p)+".")
