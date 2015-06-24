//Example 1.3 (b)
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM
//Calculate Following Summations 
clear;
clc ;
close ;
syms n;
X= symsum (%e^(2*n),n ,0, 0);
//Display the result in command window
disp (X,"The Value of summation comes out to be:");