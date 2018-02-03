//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 5.23

clc;
clear;
s=poly(0,'s')//defines s as  poly nomial variable
h=syslin('c',(48/(s*(s+2)*(s+4))))//the given transfer function assigned to variable h assume K=1
scf()
evans(h)
//calculation of K
disp('the characterstic equation is given by : s^3+6*s^2+8*s+K')
//put s=jw and equate real and imaginary parts
//K=4*w^2
K=6*8
disp(K,'the value of K is ')
