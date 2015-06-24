// Example 7.1, Page No-324
clear
clc

f=300
C=0.1*10^-6
t=f*C
R=1/(2*%pi*t*sqrt(6))
R=R/1000
printf('R= %.2f kohm', R)
printf('\nLet R=2.2 kohm, hence R1=22 kohm')
R1=22000
Rf=29*R1
Rf=Rf/1000
printf('\nRf= %d kohm', Rf)

