//Example 2.9
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM
//Z- transform of (1/3)^n u(n-1) 
clear;
clc ;
close ;
syms n z;
x =(1/3)^n;
X= (1/z)*symsum (x*(z^(-n)),n ,0, %inf );
//Display the result in command window
disp (X,"Z-transform of (1/3)^n u(n-1) is:");