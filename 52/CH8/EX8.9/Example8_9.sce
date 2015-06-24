//Example 8.9
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM
//Develop a two component decomposition for the transfer function 
//and determine P0(z) and P1(z)
clear;
clc ;
close ;
syms z a n;
HZ=(z)/(z-a);
hn=a^n;//Inverse Z Transform of HZ
h2n=a^(2*n);
P0=symsum(h2n*z^(-n),n,0,%inf);
h2n1=a^(2*n+1);
P1=symsum(h2n1*z^(-n),n,0,%inf);
disp(P0,'P0(Z) = ');
disp(P1,'P1(Z) = ');