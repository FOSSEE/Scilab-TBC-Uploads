//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 5.28

clc;
clear;
s=poly(0,'s')//defines s as  poly nomial variable
h=syslin('c',(1/(s*(s^2+6*s+10))))//the given transfer function assigned to variable h assume K=1
scf()
evans(h)
//the characterstic equation is (s^3+6s^2+10s)+K
//put s=jw and equating real and imaginary parts to calculate K
K=6*(3.2)^2//the valuw of w is 3.2
disp(K,'the value of K is ')
