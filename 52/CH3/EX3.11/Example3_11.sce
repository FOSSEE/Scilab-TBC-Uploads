//Example 3.11
//Program to Compute the 8-point DFT of the following sequences 
//x1[n]=[1,0,0,0,0,1,1,1]
//x2[n]=[0,0,1,1,1,1,0,0]  
clear;
clc ;
close ;
x1=[1,0,0,0,0,1,1,1];
x2=[0,0,1,1,1,1,0,0];  
//DFT Computation
X1 = fft (x1 , -1);
X2 = fft (x2 , -1);
//Display sequences X1[k] and X2[k] in command window
disp(X1,"X1[k]=");
disp(X2,"X2[k]=");