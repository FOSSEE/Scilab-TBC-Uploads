//Example 3.25
//Program to Compute the 8-point Circular Convolution of the Sequences
//x1[n]=[1,1,1,1,0,0,0,0]
//x2[n]=sin(3*pi*n/8)
clear;
clc ;
close ;
x1=[1,1,1,1,0,0,0,0];
n=0:1:7;
pi=22/7;
x2=sin(3*pi*n/8);
//DFT Computation
X1=fft (x1,-1);
X2=fft (x2,-1);
//Circular Convolution using DFT 
Y=X1.*X2;
//IDFT Computation
y= fft (Y,1);
//Display sequence y[n] in command window
disp(y,"y[n]=");