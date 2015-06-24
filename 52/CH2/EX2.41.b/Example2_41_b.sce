//Example 2.41 (b)
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM
//Z- transform of n^2 u(n) 
clear;
clc ;
close ;
syms n z;
x =1;
X= symsum (x*(z^(-n)),n ,0, %inf )
Y = diff(diff (X,z),z);
//Display the result in command window
disp (Y,"Z-transform of n^2 u(n)  is:");