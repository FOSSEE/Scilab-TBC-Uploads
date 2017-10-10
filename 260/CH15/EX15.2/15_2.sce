//Eg-15.2
//pg-608

clear
clc

// Using D in the place of greek alphabet delta

// Taking square grid => Dx = Dy = 0.25

// Applying central difference approximation to the second derivatives, we obtain

// [T(i+1,j) - 2*T(i,j) + T(i-1,j)]/(Dx)^2 + [T(i,j+1) - 2*T(i,j) + T(i,j-1)]/(Dy)^2 = 0.    i = 1,2,3; j = 1,2,3.....this can be simplified as

// T(i+1,j) + T(i-1,j) + T(i,j+1) + T(i,j-1) - 4*T(i,j) = 0

//Applying the above equation to the 9 points analytically leaves us with 9 equations and 9 variables T11 to T33. This can be written in the matrix equation form Ax = B.

A = [4 -1 0 -1 0 0 0 0 0;-1 4 -1 0 -1 0 0 0 0;0 -1 4 0 0 -1 0 0 0;-1 0 0 4 -1 0 -1 0 0;0 -1 0 -1 4 -1 0 -1 0;0 0 -1 0 -1 4 0 0 -1;0 0 0 -1 0 0 4 -1 0;0 0 0 0 -1 0 -1 4 -1;0 0 0 0 0 -1 0 -1 4];

B = [65;25;125;40;0;100;90;50;150];
printf('Solving the Equation Ax = B will give the values of Temperatures, where A = \n')
disp(A)

printf('\nand B = ')

disp(B)

printf('\nTherefore the matrix representing T11 to T33 is \n')

x = inv(A)*B;

disp(x)
