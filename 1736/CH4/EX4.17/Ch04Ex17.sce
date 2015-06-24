// Scilab Code Ex4.17: Page-131 (2006)
clc; clear;
e = 1.6e-019;   // Electronic charge, C
R_H = -8.4e-011;  // Hall coeffcient of Ag, metre cube per coulomb
n = -3*%pi/(8*R_H*e);    // Electronic concentration of Ag, per metre cube
printf("\nThe electronic concentration of Ag = %3.1e per metre cube", n);

// Result 
// The electronic concentration of Ag = 8.8e+028 per metre cube 

