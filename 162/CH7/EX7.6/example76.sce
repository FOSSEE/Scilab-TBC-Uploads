//Example 7.6
//Convolution of given sequences
clc;
x=[1,-2,2];
y=[2,5,3,6];
X=convol(x,y);
disp(X,'Convolution of the given sequences');