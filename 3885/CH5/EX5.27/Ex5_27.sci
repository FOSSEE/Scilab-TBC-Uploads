//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 5.27

clc;
clear;
s=poly(0,'s')//defines s as  poly nomial variable
K=poly(0,'K')
h=syslin('c',(s^2+6*s+25)/(s*(s+1)*(s+2)))//the given transfer function assigned to variable h assume K=1
scf()
evans(h)
//the characterstic equation is (s^3+(3+K)s^2+(2+6K)s)25K
//put s=jw and equating real and imaginary parts to calculate K
a=roots((-6*K^2)+5*K-6)
disp(a,'the value of K is')
