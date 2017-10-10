// Example 6_7
clc;funcprot(0);
// Given data
R=53.3/778;//  Btu/lbm-°R

// Calculation
delS=R*log(2);// The entropy change in Btu/lbm-°R
printf("\nThe entropy change,delS=%0.5f Btu/lbm-°R",delS);
