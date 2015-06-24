//Example 2.4
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM
//Z- transform of a^n u(n) 
clear;
clc ;
close ;
syms a n z;
x =a^n
X= symsum (x*(z^(-n)),n ,0, %inf );
//Display the result in command window
disp (X,"Z-transform of a^n u(n) with is:");
disp('ROC is the Region mod(z) > a')