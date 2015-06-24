//Example 3.36
//Program to Compute the IDFT of the following Sequence 
//X[k]=[12,-1.5+j2.598,-1.5+j0.866,0,-1.5-j0.866,-1.5-j2.598]  
clear;
clc ;
close ;
j=sqrt(-1);
X=[12,-1.5+j*2.598,-1.5+j*0.866,0,-1.5-j*0.866,-1.5-j*2.598];
//IDFT Computation
x = fft (X , 1);
//Display Sequence x[n] in command window
disp(round(x),"x[n]=");