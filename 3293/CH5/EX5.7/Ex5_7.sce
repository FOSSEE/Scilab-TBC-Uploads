//page 160
//Example 5.7
clc;
clear;
close;
x = poly(0,"x");
A = [x^2+x x+1;x-1 1];
B = [x^2-1 x+2;x^2-2*x+3 x];
disp(A,'A = ');
disp(B,'B = ');
disp(det(A),'det A = ');
disp(det(B),'det B = ');
disp('Thus, A is not invertible over K whereas B is invertible');
disp(inv(A)*det(A),'adj A = ');
disp(inv(B)*det(B),'adj B = ');
disp('(adj A)A = (x+1)I');
disp('(adj B)B =  -6I');
disp(inv(B),'B inverse = ');
//end
