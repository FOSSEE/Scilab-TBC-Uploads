//Example 7.5
//Convolution of two signals
clc;
x=[1,3,2];
y=[4,1,2];
X=convol(x,y);
disp(X,'Convolution of the given sequences');