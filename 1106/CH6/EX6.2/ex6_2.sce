// Example 6.2, Page No-270
clear
clc

fh=2000
A=2
C=0.01*10^-6
R=1/(2*%pi*fh*C)
R=R/1000
printf('R= %.3f kohm', R)
//Rf/Ri=A-1
printf('\n Hence Rf=Ri=10kohm')

