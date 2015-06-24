clear ;
clc;
// Example 8.5
printf('Example 8.5\n\n');
// Page no. 207
// Solution Fig E8.5

// Given
W = 100 ;// Water removed - [kg]
A_H2O = 0.80 ;// Fraction of water in A(intial fish cake)
A_BDC = 0.20 ;//  Fraction of BDC(bone dry cake) in B(final dry fish cake)
B_H2O = 0.40 ;// Fraction of water in A(intial fish cake)
B_BDC = 0.60 ;//  Fraction of BDC(bone dry cake) in B(final dry fish cake)

// By analysis for degree of freedom , DOF comes to be zero 
// Solve following equations simultaneously for A and B,
// A*A_H2O = B*B_H2O + W - By H2O balance
// A = B + W - By overall balance
a = [A_H2O -B_H2O;1 -1] ;// Matrix of coefficient
b = [W;W] ;// Matrix of contants
x = a\b; // Matrix of solutions- A = x(1) and B = x(2)

printf('Weight of the fish cake originally put into dryer -     %.0i kg\n',x(1) );