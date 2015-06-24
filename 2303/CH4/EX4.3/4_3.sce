//Example 4.3
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM

clear;
clc ;
close ;

j=sqrt(-1);
syms w n z T j;
f1=exp(j*w*T*n);
F1=symsum(f1*(z^-n),n,0,%inf);
f2=exp(-j*w*T*n);
F2=symsum(f2*(z^-n),n,0,%inf);
F=(F1-F2)/(2*j);
//Display the result in command window
disp (F,"Z-transform of sin(n*w*T) u(n) is:");
disp('ROC is the Region mod(z) > 1);
