//page 197
//Example 6.5
clc;
clear;
close;
A = [0 1 0 1;1 0 1 0;0 1 0 1;1 0 1 0];
disp(A,'A = ');
disp('Computing powers on A:');
disp(A*A,'A^2 = ');
disp(A*A*A,'A^3 = ');
deff('[p] = p(x)','p = x^3 - 4*x');
disp('if p = x^3 - 4x, then');
disp(p(A),'p(A) = ');
x = poly(0,"x");
f = x^3 - 4*x;
disp(f,'Minimal polynomial for A is: ');
disp(roots(f),'Characteristic values for A are:');
disp(rank(A),'Rank(A) = ');
disp(round(poly(A,"x")),'So, from theorem 2, characteristic polynomial for A is:');
//end
