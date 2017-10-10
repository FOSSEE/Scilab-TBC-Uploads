// Example 13_1
clc;funcprot(0);
// Given data
d_in=10;// Diameter of piston in inch
d_m=0.254;// Diameter of piston in m
L_in=38.0;// Stroke in inch
L_m=0.965;// Stroke in m
mg=291900;// lbf
h=10.0;// ft
m=84.0;// lbm

// Calculation
Duty=mg*h;// ft.lb
n_T=(Duty/(8.5*10^8))*100;// The thermal efficiency of this engine in %
printf("\nThe duty=%7.0f ft.lbf \nThe thermal efficiency of this engine=%0.3f percentage",Duty,n_T);
