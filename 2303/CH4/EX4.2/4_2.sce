//Example 4.2
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM

clear;
clc ;
close ;
syms n z a;
f =e^(-n*a*T);
F= symsum (f*(z^(-n)),n ,0, %inf );

//Display the result in command window
disp (F,"Z-transform of e^(-a*n*T)u(n) is:");
disp('ROC is the Region mod(z) > mod(e^(-a*T))');
disp('Case 1: a is real     ');
disp('ROC is the Region mod(z) > e^(-a*T)');
disp('Case 2: a is imaginary     ');
disp('ROC is the Region mod(z) > 1');
