//Example 10.5, page 386
clc
a=1*(1+1)
x=a+a-a
y=2*a
g=1+(x/y)
u=9.3*10^-24//amp-m2
B=1/10//in Tesla
delta_E=u*B*g
printf("\n The displace energy is  %e  ev",delta_E)