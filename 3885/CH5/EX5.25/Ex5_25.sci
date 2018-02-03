//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 5.25

clc;
clear;
s=poly(0,'s')//defines s as  poly nomial variable
h=syslin('c',(1/(s*(s+4)*(s^2+4*s+20))))// the given transfer function assigned to variable h assume K=1  
scf()
evans(h)
//the characterstic equation is (s^4+8s^3+36s^2+80s)+K
//put s=jw and equating real and imaginary parts to calculate K
K=-(3.2)^4+36*(3.2)^2//the value of w is 3.2
disp(K,'yhe value of K is;')
