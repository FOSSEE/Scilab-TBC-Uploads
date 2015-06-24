//Example 2.13 (d)
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM
//Z- transform of (n+0.5)((1/3)^n)u(n) 
clear;
clc ;
close ;
syms n z;
x1 =(1/3)^n;
X11= symsum (x1*(z^(-n)),n ,0, %inf )
X1 = diff (X11,z);
x2 =(1/3) ^(n);
X2= symsum (0.5* x2 *(z^(-n)),n ,0, %inf );
X = (X1+X2);
//Display the result in command window
disp (X,"Z-transform of (n+0.5)((1/3)^n)u(n)  is:");