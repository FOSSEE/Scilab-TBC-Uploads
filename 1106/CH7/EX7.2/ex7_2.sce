// Example 7.2, Page No-326
clear
clc

f=2000
C=0.05*10^-6
t=f*C
R=1/(2*%pi*t)
R=R/1000
printf('R= %.3f kohm', R)
printf('\nLet R=1.8 kohm')
R1=1800
Rf=2*R1
Rf=Rf/1000
printf('\nRf= %d kohm', Rf)
printf('\nStandard value Rf= 3.3 kohm')
