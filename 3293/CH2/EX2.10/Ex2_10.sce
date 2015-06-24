//page 38
//Example 2.10
clear;
clc;
close;
A = [1 2 0 3 0;0 0 1 4 0;0 0 0 0 1];
disp(A,'A = ');
disp('The subspace of F^5 spanned by a1 a2 a3(row vectors of A) is called row space of A.');
a1 = A(1,:);
a2 = A(2,:);
a3 = A(3,:);
disp(a1,'a1 = ');
disp(a2,'a2 = ');
disp(a3,'a3 = ');
disp('And, it is also the row space of B.');
B = [1 2 0 3 0;0 0 1 4 0;0 0 0 0 1;-4 -8 1 -8 0];
disp(B,'B = ');
//end
