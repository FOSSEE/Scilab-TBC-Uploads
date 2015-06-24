//Example 4.8
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM

clear;
clc ;
close ;
syms n z a;

f1=a^n;
F1= symsum (f1*(z^(-n)),n ,0, %inf );

f2=a^n;
F2= symsum (f2*(z^(-n)),n ,1,%inf );
//Display the result in command window
F=F1-F2;            //linearity property
disp (F,"Z-transform of f(n) is:");
disp('ROC is the entire Z-domain ')
