//Example 2.7
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM
//Z- transform of [3(3^n)-4(2)^n] u(n) 
clear;
clc ;
close ;
syms n z;
x1 =(3) ^(n);
X1= symsum (3* x1 *(z^(-n)),n ,0, %inf );
x2 =(4) ^(n);
X2= symsum (4* x2 *(z^(-n)),n ,0, %inf );
X = (X1 -X2);
//Display the result in command window
disp (X,"Z-transform of [3(3^n)-4(2)^n] u(n)  is:");