//Example 5.2
clear;
clc ;
close ;
x = [1,2,3,4,5,2,3,1];
//DFT Computation
X = fft (x , -1);
//Display sequence X[k] in command window
disp(X,"X[k]=");
