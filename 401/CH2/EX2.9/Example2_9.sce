//Example 2.9
//Note: MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM
//Program to deduce an approximation for the normalized propagation 
//constant
 
clear;
clc ;
close ;

syms W b V;

//Given data
//Eigen Value of the single mode step index fiber cladding
W =1.1428*V-0.9960;
 
//Normalized propagation constant b(V)
b= W^2/V^2;

//Display the result in command window
disp (b,"The normalized propagation constant b(V) is given by");