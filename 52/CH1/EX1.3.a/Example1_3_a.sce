//Example 1.3 (a)
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM
//Calculate Following Summations 
clear;
clc ;
close ;
syms n;
X= symsum (sin(2*n),n ,2, 2);
//Display the result in command window
disp (X,"The Value of summation comes out to be:");