clear;
clc;

// Stoichiometry
// Chapter 6
// Stoichiometry and Unit Operations


// Example 6.6
// Page 361
printf("Example 6.6, Page 361 \n \n");

// solution

//(a)
// basis 100 kg feed mix
// F = E +R = 100           (i)
xf = .475
xe = .82
xr = .14
//acetic acid balance
// xf*F = xe*E + xr*R      (ii)
//solving (i) & (ii)
E = 49.2 //kg
R = 50.8 //kg
a = R*xr //kg  acetic acid leftover
b= (a/(xf*100))*100
printf(" Acetic acid that remained unextracted = "+string(b)+" percent.")
