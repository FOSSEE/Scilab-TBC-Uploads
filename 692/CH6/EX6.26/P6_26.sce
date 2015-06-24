// Example 6.26
//MAXIMA SCILAB TOOLBOX
//Z transform of (n+1)*a^n*u(n)

clear ;
clc ;
syms a n z ;
x1 =(a)^n ;
X1 = symsum(x1*(z^(-n)),n,0,%inf);
X2 = -z*(diff (X,z,1)) ;
X = X1 + X2;
disp (X , 'Z−transform of(n+1)*a^n*u(n) is X = ');
