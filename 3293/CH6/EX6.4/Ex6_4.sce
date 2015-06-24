//page 193
//Example 6.4
clc;
clear;
close;
x = poly(0,"x");
A = [5 -6 -6; -1 4 2; 3 -6 -4];     //Matrix given in Example 3
disp(A,'A = ');
f = (x-1)*(x-2)^2; 
disp('Characteristic polynomial of A is:');
disp('f = (x-1)(x-2)^2');
disp(f,'i.e., f = ');
p = (x-1)*(x-2);
disp((A-eye(3,3))*(A-2 * eye(3,3)),'(A-I)(A-2I) = ');
disp('Since, (A-I)(A-2I) = 0. So, Minimal polynomial for above is:');
disp(p,'p = ');
disp('---------------------------------------');
A = [3 1 -1; 2 2 -1;2 2 0];     //Matrix given in Example 2
disp(A,'A = ');
f = (x-1)*(x-2)^2; 
disp('Characteristic polynomial of A is:');
disp('f = (x-1)(x-2)^2');
disp(f,'i.e., f = ');
disp((A-eye(3,3))*(A-2 * eye(3,3)),'(A-I)(A-2I) = ');
disp('Since, (A-I)(A-2I) is not equal to 0. T is not diagonalizable. So, Minimal polynomial cannot be p.');
disp('---------------------------------------');
A = [0 -1;1 0];
disp(A,'A = ');
f = x^2 + 1;
disp('Characteristic polynomial of A is:');
disp(f,'f = ');
disp(A^2 + eye(2,2),'A^2 + I = ');
disp('Since, A^2 + I = 0, so minimal polynomial is');
p = x^2 + 1;
disp(p,'p = ');
//end
