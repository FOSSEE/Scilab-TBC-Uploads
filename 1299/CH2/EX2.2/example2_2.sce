//Example 2.2
//Inverse laplace transform using scilab
clear;clc;
xdel(winsid());
s=%s;
num=(s+6);
den=(s^2+2*s+10);
F1=syslin('c',num,den)
F=pfss(F1)
//since pfss(F1) is not able to factorise F1,therefore,
//Rewriting numerator as, (s+6)=(s+1+5);
//Rewriting the denominator as, (s^2+2*s+6)=(s+1)^2+3^2;
disp("F=[((s+1)/(s+1)^2+3^2)+(5/3)*(3/(s+1)^2+3^2)]")
//From the standard formula of inverse laplace transform;
//(s+1)/(s+1)^2+3^2=%e^-t*(cos3t);
//(5/3)*(3/(s+1)^2+3^2)=(5/3)*%e^-t*(sin3t);
disp("f(t)=(%e^-t)*(cos3t)+(5/3)*(%e^-t)*(sin3t)")
