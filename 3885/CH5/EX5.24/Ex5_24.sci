//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 5.24

clc;
clear;
s=poly(0,'s')//defines s as  poly nomial variable
h=syslin('c',(s+9)/(s*(s^2+4*s+11)))//the given transfer function assigned to variable h assume K=1
scf()
evans(h)
//the characterstic equation is (s^3+4s^2+11s)+Ks+9K
//put s=jw and equating real and imaginary parts to calculate K
K=(4*(4.4)^2)/9//the value of w is 4.4
disp(K,'the value of K is;')





