//Example 4.4
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM

clear;
clc ;
close ;
syms n z a;

f1=a^n;
F1= symsum (f1*(z^(-n)),n ,0, %inf );

f2=-a^n;
F2= symsum (f2*(z^(-n)),n ,-%inf, 1 );
//Display the result in command window
disp (F1,"Z-transform of a^n for n>=0 is:");
disp('ROC is the Region mod(z) > a');

disp (F2,"Z-transform of -a^n for n>=0 is:");
disp('ROC is the Region mod(z) < a');
