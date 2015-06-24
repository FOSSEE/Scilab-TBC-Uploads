//Example 14.4, Page 516
clc
uo=4*%pi*10^-7//T-m/amp
u=2.2*9.3*10^-24//in Tesla
x=3*10^-10//in m
E=(uo*u*u)/(2*%pi*x**3)
printf("\n The Energy required  is  %e Joule",E)
k=1.38*10^-23//in J/k
T=E/k
printf("\n The temperature  is  %f K",T)
