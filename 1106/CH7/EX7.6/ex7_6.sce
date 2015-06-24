// Example 7.6, Page No-336
clear
clc

Ri=10*10^3
Vp=10
Vref=10
fo=200
C1=0.1*10^-6
Vi=2
t=Vi/Vref
f=t/(Ri*C1)
printf('Frequency f= %d Hz', f)

