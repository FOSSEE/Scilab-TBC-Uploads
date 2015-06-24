//page 184
//Example 6.2
clc;
clear;
close;
A = [3 1 -1; 2 2 -1;2 2 0];
disp(A,'A = ');
disp('Characteristic polynomial for A is:');
p = poly(A,"x");
disp(p);
disp('or');
disp('(x-1)(x-2)^2');
r = roots(p);
[m,n] = size(A);
disp('The characteristic values of A are:');
disp(round(r));
B = A-eye(m,n);
disp(B,'Now, A-I = ');
disp(rank(B),'rank of A - I= ');
disp('So, nullity of T-I = 1');
a1 = [1 0 2];
disp(a1,'The vector that spans the null space of T-I = ');
B = A-2*eye(m,n);
disp(B,'Now,A-2I = ');
disp(rank(B),'rank of A - 2I= ');
disp('T*alpha = 2*alpha if alpha is a scalar multiple of a2');
a2 = [1 1 2];
disp(a2,'a2 = ');
//end
