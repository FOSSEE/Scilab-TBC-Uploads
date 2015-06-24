// Example 8.4, Page No-371
clear
clc

R1=240
R2=2000
Iadj=50*10^-6
Vref=1.25

Vo=(Vref*(1+R2/R1))+(Iadj*R2)
printf('Vo= %.2f V', Vo)
