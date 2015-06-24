//Example 3.18
//Find the convolution.
clc;
x1=[1 -2 3 1];
x2=[2 -3 -2];
y=convol(x1,x2);
disp(y,'The convolution of the above two sequences is:');