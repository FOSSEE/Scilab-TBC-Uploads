//Example No. 6_01
//Possible Initial guess values for roots
//Pg No. 126

clear ; close ; clc ;

A = [ 2 ; -8 ; 2 ; 12]; // Coefficients of x terms in the decreasing order of power
n = size(A);
x1 = -A(2)/A(1);
disp(x1,'The largest possible root is  x1 =')
disp(x1,'No root can be larger than the value')

x = sqrt((A(2)/A(1))^2 - 2*(A(3)/A(1))^2);

printf('\n all real roots lie in the interval (-%f,%f)\n',x,x)
disp('We can use these two points as initial guesses for the bracketing methods and one of them for open end methods')