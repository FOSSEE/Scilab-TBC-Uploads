clc; funcprot(0);
//Example 5.2  Flat Plates Nornmal to Direction to Flow  

// Initialisation of variables
V1 = 1;
F1 = 0.012;
V2 = 35;

// Calculations
A = F1/(0.00327*V1^2)
F2 = 0.00327*A*V2^2;

//Results 
disp(F2,"Force on windshield when wind velocity is 35 mph (lb) :");

