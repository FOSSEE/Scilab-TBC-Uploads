//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 5.26

clc;
clear;
s=poly(0,'s')//defines s as  poly nomial variable
h=syslin('c',(s+15)/(s*(s+1)*(s+5)))//the given transfer function assigned to variable h assume K=1
scf()
evans(h)
//the characterstic equation is (s^3+6s^2+5s)+Ks+15K
//put s=jw and equating real and imaginary parts to calculate K
K=30/(-4.5)
disp(K,'yhe value of K is;')
