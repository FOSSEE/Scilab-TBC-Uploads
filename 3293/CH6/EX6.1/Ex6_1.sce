//page 184
//Example 6.1
clc;
clear;
close;
disp('Standard ordered matrix for Linear operator T on R^2 is:');
A = [0 -1;1 0];
disp(A,'A = ');
disp('The characteristic polynomial for T or A is:')
x = poly(0,"x");
p = detr(x*eye(2,2)-A);
disp(p);
disp('Since this polynomial has no real roots,T has no characteristic values.');
//end
