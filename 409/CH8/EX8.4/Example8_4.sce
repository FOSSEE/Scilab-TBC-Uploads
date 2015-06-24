clear ;
clc;
// Example 8.4
printf('Example 8.4\n\n');
// Page no. 205
// Solution Fig E8.4

// Given
A = 200 ;// Mass of added solution [kg] 
P_H2SO4 = .1863 ;//Fraction of H2SO4 in P(Final solution)
P_H2O = .8137 ;//Fraction of H2O in P(Final solution)
A_H2SO4 = .777 ;//Fraction of H2SO4 in A(Added solution)
A_H2O = .223 ;//Fraction of H2O in A(Added solution)
F_H2SO4 = .1243 ;//Fraction of H2SO4 in F(Original solution)
F_H2O = .8757 ;//Fraction of H2O in F(Original solution)

// By analysis for degree of freedom , DOF comes to be zero 
// Solve following equations simultaneously for F and P,
// P*P_H2O - F*F_H2O = A*A_H2O - By H2O balance
// P - F = A - By overall balance
a = [P_H2O -F_H2O;1 -1] ;// Matrix of coefficient
b = [A*A_H2O;A] ;// Matrix of contants
x = a\b ;// Matrix of solutions- P = x(1) and F = x(2)

printf(' Original solution taken-                                         %.0i kg\n',x(2) );
printf('  Final solution or kilograms of battery acid formed-              %.0i kg\n',x(1) );