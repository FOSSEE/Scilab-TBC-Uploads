// Example 7.10, Page No-352
clear
clc


f1=1070
RA=50000
C=0.01*10^-6
Rc=76//Standard Value
t=1.45/(f1*C)
RB=(t-RA)/2
printf('Assuming RA= 50 kohm and C= 0.01 uF')
RB=RB/1000
printf('\nHence, RB= %.2f kohm', RB)
printf('\nRc= %d ohm (Standard Value)', Rc)
