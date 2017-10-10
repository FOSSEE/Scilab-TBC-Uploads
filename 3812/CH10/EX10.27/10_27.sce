//Example 10_27
//Convolution of given signals
clc;
x=[1,-2,1];
y=[1,1,1,1,1,1];
X= convol (x,y);
disp(X,'Convolution of given sequences');
