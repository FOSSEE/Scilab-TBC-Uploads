//Example 3.16
//Determine the output response.
clc;
x=[1 2 3 2];
h=[1 2 2];
y=convol(x,h);
disp(y,'convolution of the above two sequences is:');