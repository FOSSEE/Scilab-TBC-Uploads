//Example 1.62
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM
//Fourier transform of (0.8)^|n| u(n) 
clear;
clc ;
close ;
syms w n;
X= symsum ((0.8)^n*%e^(%i*w*n),n ,1, %inf )+symsum ((0.8)^n*%e^(-%i*w*n),n ,0, %inf )
//Display the result in command window
disp (X,"The Fourier Transform comes out to be:");