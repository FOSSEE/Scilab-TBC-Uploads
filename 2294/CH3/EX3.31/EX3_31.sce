//Example 3.31
//Find the cross correlation of two finite length sequences.
clc;
x=[1 2 1 1];
y=[1 2 1 1];
z=convol(x,y);
disp(z);
