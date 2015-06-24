//Example 4.5
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM

clear;
clc ;
close ;
syms b n z;

f1=b^n;
F1= symsum (f1*(z^(-n)),n ,0, %inf );

f2=b^-n;
F2= symsum (f2*(z^(-n)),n ,-%inf, -1 );
//Display the result in command window
F=F1+F2;
disp (F,"Z-transform of b^|n| is:");
disp('ROC is the Region  b < mod(z) <1/b')
