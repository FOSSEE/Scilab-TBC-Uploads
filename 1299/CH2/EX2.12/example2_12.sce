//Example 2.12
//inverse z transform by partial fraction method
clear;clc;
xdel(winsid());

z=%z;
num=1;
den=((1-z^-1)^2)*(1+z^-1);
X=syslin('c',num/den)
X1=X/z
pfss(X1)
// by partial fraction the X1 will be factorised as (in terms of z)
disp("X(z)=(0.25*z/(z+1))+(0.75*z/(z-1))+(0.5*z/(z-1)^2)")
disp("X(z)=(0.25/(1+z^-1))+(0.75/(1-z^-1))+(0.5*z/(z-1)^2)")
// 0.25/(1+z^-1) is the z transform of "0.25*(-1)^n*u(n)"
// (0.75/(1-z^-1)) is the z transform of "0.75*u(n)"
//(0.5*z/(z-1)^2) is the z transform of "0.5*n*u(n)"
disp("x(n)=0.25*((-1)^n)*u(n)+0.75*u(n)+0.5*n*u(n)")
