//Example 5.3
clear;
clc ;
close ;
x = [1,2,3,4,5,2,3,1];
//DFT Computation
X = fft (x , -1);
X2=X;

//Display sequence X[k] in command window
disp(X,"X[k]=");

//Time reversal property
X2=[X2(1), X2(length(X2):-1:2)];
disp(X2,"X[-k]=",'By Time reversal property DFT of x[-n] is:');
