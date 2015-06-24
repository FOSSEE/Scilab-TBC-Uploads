//Example 4.6
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM

clear;
clc ;
close ;
syms n z;

f1=1;
F1= symsum (f1*(z^(-n)),n ,-%inf, -1 );

f2=(0.5)^n;
F2= symsum (f2*(z^(-n)),n ,0,%inf );
//Display the result in command window
F=F1+F2;
disp (F,"Z-transform of f(n) is:");
disp('ROC is the Region  0.5 < mod(z) <1 ')
