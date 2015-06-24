//Example 2.5
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM
//Z- transform of -b^n u(-n-1) 
clear;
clc ;
close ;
syms b n z;
x =b^n
X= symsum (x*(z^(-n)),n ,0, %inf );
//Display the result in command window
disp (X,"Z-transform of b^n u(n) with is:");
disp('ROC is the Region mod(z) < b')