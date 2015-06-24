//Example 4.1
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM

clear;
clc ;
close ;
syms n z;
f = 1;
F= symsum (f*(z^(-n)),n ,0, %inf );
//Display the result in command window
disp (F,"Z-transform of f(n)=1 for all n>=0 with is:");
disp('ROC is the Region  |Z|>1 ');
