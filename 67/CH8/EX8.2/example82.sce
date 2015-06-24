//Example 8.2
//Find the response of an FIR filter with impulse response h[n]=[1,2,4] //to the input sequence x[n]=[1,2]
clc;
x=[1,2];
h=[1,2,4];
Y=convol(x,h);
disp(Y,'y[n]=');