//Example 14.8
//Gauss Legendre Two Point Rule
//Page no. 472
clc;close;clear;

deff('y=f(x)','y=1/(x+3)')
s=integrate('f(x)','x',-1,1)
printf('By Direct Method, I = %g',s)
s=f(-1/sqrt(3))+f(1/sqrt(3))
printf('\n\n By Gauss-Legendre 2 point rule, I = %g',s)