// Example 2_4
clc;funcprot(0);
// Given data
m=2;// The mass of water in lb
P=540;// psia
T=700;// °F

// Calculation
// Use Table C-3E.
v_f=1.3040;// ft^3/lbm
v_g=1.0727;// ft^3/lbm
x=0.4;// The quality of steam
v=v_f+(x*(v_g-v_f));// ft^3/lbm
V=m*v;// The final volume of the container in ft^3
printf("\nThe final volume of the container,V=%1.3f ft^3.",V);
