//page 307
//Example 8.28
clc;
clear;
close;
disp('x1 and x2  are two real nos. i.e., x1^2 + x2^2 = 1');
x1 = rand();
x2 = sqrt(1 - x1^2);
disp(x1,'x1 = ');
disp(x2,'x2 = ');
B = [x1 x2 0;0 1 0;0 0 1];
disp(B,'B = ');
disp('Applying Gram-Schmidt process to B:')
a1 = [x1 x2 0];
a2 = [0 1 0] - x2 * [x1 x2 0];
a3 = [0 0 1];
disp(a1,'a1 = ');
disp(a2,'a2 = ');
disp(a3,'a3 = ');
U = [a1;a2/x1;a3];
disp(U,'U = ');
M = [1 0 0;-x2/x1 1/x1 0;0 0 1];
disp(M,'M = ')
disp(inv(M) * U,'inverse(M) * U = ');
disp('So, B = inverse(M) * U');
//end
