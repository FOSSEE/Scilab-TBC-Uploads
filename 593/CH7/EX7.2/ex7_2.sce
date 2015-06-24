clear;
//clc();

// Example 7.2
// Page: 138
printf("Example-7.2  Page no.-138\n\n");

//***Data***//
T = 100 + 460;//[R] Temperature of the system in Rankine
P = 1;// [psia]
R = 10.73;//[(psi*ft^(3)/(lbmol*R))] Gas constant

// From the steam table, the specific volume of the water at 101.7 F, which is nearly equal to 100 F, and 1 psia is
v = 0.016136*18;//[ft^(3)/lbmol]
z = (P*v)/(R*T);

// and volume residual is given by
a = ((R*T)/P)*(1-z);//[ft^(3)/lbmol]

printf(" Compresssibility factor the liquid water at the given condition is %f\n ",z);
printf("Volume residual for the liquid water at the given condition is     %0.1f cubic feet/lbmol",a)