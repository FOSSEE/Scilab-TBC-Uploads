//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 5.22

clc;
clear;
s=poly(0,'s')//defines s as  poly nomial variable
G=syslin('c',(1/(s*(s^2+4*s+13))))//the given transfer function assigned to variable G assume K=1
scf()
evans(G)
//calculation of K
disp('the characterstic equation is given by : s^2+4*s^2+13*s+K')
//put s=jw and equate real and imaginary parts
//K=4*w^2
K=4*13
disp(K,'the value of K is ')
