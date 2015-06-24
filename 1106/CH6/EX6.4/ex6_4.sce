// Example 6.4, Page No-275
clear
clc

N=2
fh=2*10^3
C=0.1*10^-6
R=1/(2*%pi*fh*C)
Rkohm=R/1000
printf('R= %.1f kohm', Rkohm)
alpha=1.414
A=3-alpha
RfbyRi=A-1
printf('\nRf/Ri= %.3f', RfbyRi)
printf('\nHence, take Rf=5.86 kohm and Ri=10 kohm')

