//Example 6.6, page 237
clc
h=10^-34//in j-s
m=10^-30//in kg
a=10^-14//in m
c=3*10^8//in m/s
E=((%pi*h)^2)/(2*m*a*a)
printf("\n Energy is %e  J ",E)
//convert to ev
e=E/(1.6*10^-19)
printf("\n Energy is %e  ev ",e)
//Answer difference is due to round off
E1=(%pi*c*h)/a
printf("\n Zero level Energy is %e  J ",E1)
e1=E1/(1.6*10^-19)
printf("\n Zero level Energy is %e  ev ",e1)
//Answer difference is due to round off
//when A=100
A=100
r=10^-14//in m
x=10^-10//in coul2/nt-m2
ec=1.6*10^-19//in c
Q=(-(A*ec*ec)/(x*r))*(1/ec)
printf("\n Typical value Energy is %e  ev ",Q)

