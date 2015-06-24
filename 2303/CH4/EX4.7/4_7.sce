//Example 4.7
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM

clear;
clc ;
close ;
syms n z;

f1=(1/2)^n;
F1= symsum (f1*(z^(-n)),n ,0, %inf );

f2=(1/3)^n;
F2= symsum (f2*(z^(-n)),n ,0,%inf );
//Display the result in command window
F=F1+F2;      //linearity property
disp (F,"Z-transform of f(n) is:");
disp('ROC is the Region  mod(z) > (1/2) ')
