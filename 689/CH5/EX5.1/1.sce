clc; funcprot(0);
//Example 5.1  Flat Plates Nornmal to Direction to Flow  

// Initialisation of variables
l = 10;
h = 8;
V = 40;

// Calculations
A = l*h;
F = 0.00327*A*V^2;

//Results 
disp(F,"Force in plate (lb) :");

