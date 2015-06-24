// sum 8-2
clc;
clear;
W=196.2;
lenthofscale=50;
k=196.2/50;
C=8;
Ks=(1+(0.5/C));

// Let us choose oil tempered wire 0.6-0.7 %C. Refer to Table 8-4 for constants A and m, relating strength wire 
//diameter.
G=77.2*(10^3);
A=1855;
m=0.187;
// equating Tmax=0.5*sig(ut).
// Ks*(8*W*D/(pi*(d^3)))=0.5*A/(d^2)
d1=(Ks*(8*W*C/(%pi*A*0.5)));
d=d1^(1/1.813);
D=C*d;
Na=G*(d^4)/(8*(D^3)*k);
//Solid length = SL
SL=(Na-1)*d


  // printing data in scilab o/p window
printf(" wire diameter is %0.3f mm ",d);
printf("\n mean diameter is %0.3f mm ",D);
printf("\n Number of acting coils are %0.3f ",Na);

//The difference in the values of d,D and Na is due to rounding-off the digits.