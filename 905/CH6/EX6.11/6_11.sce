clear;
clc;

// Illustration 6.11
// Page: 376

printf('Illustration 6.11 -  Page: 376\n\n');

// solution
//*****Data*****//
// 1-toluene   2-1,2,3--trimethylbenzene   3-benzene
// Basis: 100 kmol/h of feed
F = 100; // [kmole/h]
// Since feed is saturated, therefore
q = 0;
// From example 6.10
x1d = 0.3;
x2d = 0.3;
x3d = 0.4;
a12 = 3.91;
a32 = 7.77;
a22 = 1; 
// Equ 6.78 gives
deff('[y] = f14(Q)','y = 1- a12*x1d/(a12-Q)-a22*x2d/(a22-Q)-a32*x3d/(a32-Q)');
Q = fsolve(2,f14);

// From the problem statement
// d1 = D*x1d    d2 = D*x2d
d1 = F*x1d*0.95; // [kmol/h]
d2 = F*x2d*0.05; // [kmol/h]
d3 = F*x3d*0.997; // [kmol/h]

// Summing the three distillate, d1,d2 and d3
D = d1+d2+d3; // [kmole/h]

Vmin = a12*d1/(a12-Q)+a22*d2/(a22-Q)+a32*d3/(a32-Q);

// From the mass balance 
Lmin = Vmin-D; // [kmol/h]
// Minimum reflux ratio
Rmin = Lmin/D;
printf("The minimum reflux ratio is %f\n\n",Rmin);