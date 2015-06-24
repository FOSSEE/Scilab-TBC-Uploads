//Example 14.9
//Gauss Legendre Three Point Rule
//Page no. 473
clc;close;clear;

deff('y=f(x)','y=1/(x+3)')
s=integrate('f(x)','x',-1,1)
printf('By Direct Method, I = %g',s)
s=5/9*f(-sqrt(3/5))+8/9*f(0)+5/9*f(sqrt(3/5))
printf('\n\n By Gauss-Legendre 3 point rule, I = %g',s)