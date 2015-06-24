// Example 10.15, page no-277
clear
clc
e=1.6*10^-19 //C
eg=0.72*e//eV
t1=293//K
t2=313//K
k=1.38*10^-23
sig1=2
n=(t2/t1)*%e^((eg/(2*k))*((1/t1)-(1/t2)))
sig2=sig1*n
printf("The conductivity of Ge at 40°C is %.3f per Ohm-m",sig2)
