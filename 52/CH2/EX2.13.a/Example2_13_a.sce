//Example 2.13 (a)
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM
//Z- transform of (-1/5)^n u(n)+5(1/2)^(-n)u(-n-1) 
clear;
clc ;
close ;
syms n z;
x1 =(-1/5)^n ;
X1= symsum (x1 *(z^(-n)),n ,0, %inf );
x2 =(1/2)^(-n);
X2= symsum (5* x2 *(z^(-n)),n ,0, %inf );
X = (X1 -X2);
//Display the result in command window
disp (X,"Z-transform of [3(3^n)-4(2)^n] u(n)  is:");
disp('ROC is the Region 1/5 < mod(z) < 2');