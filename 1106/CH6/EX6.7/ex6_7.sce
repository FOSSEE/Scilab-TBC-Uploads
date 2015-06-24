// Example 6.7, Page No-279
clear
clc

A=2
fL=2*10^3
C=0.01*10^-6
R=1/(2*%pi*fL*C)
Rkohm=R/1000
printf('R= %.1f kohm', Rkohm)

RfbyRi=A-1
printf('\nRf/Ri= %.3f', RfbyRi)
printf('\nHence, take Rf=10 kohm and Ri=10 kohm')

