//Example 3.15
//Determine the convolution sum of two sequences.
clc;
x=[1 4 3 2];
h=[1 3 2 1];
y=convol(x,h);
disp(y,'Convolution sum of the above two sequences is:");