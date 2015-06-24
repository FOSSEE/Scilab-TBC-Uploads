//Example 2.41 (a)
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM
//Z- transform of n.(-1)^n u(n) 
clear;
clc ;
close ;
syms a n z;
x =(-1) ^n;
X= symsum (x*(z^(-n)),n ,0, %inf )
Y = diff (X,z);
//Display the result in command window
disp (Y,"Z-transform of n.(-1)^n u(n)  is:");