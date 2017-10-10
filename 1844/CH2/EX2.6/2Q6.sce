clc

x=(4.86)
n=2
x1=0.005
ex=0.0025
s1=n*x^(n-1)*x1
es=n*x^(n-1)*ex

sn2= x^n + es
sn3= x^n - es

printf('The maximum error =%f\n',s1)
printf(' Hence the most probable error = +/- %f\n',es)
printf(' The most probable limits of quantity s are %f',sn2)
printf(' and %f\n',sn3)
