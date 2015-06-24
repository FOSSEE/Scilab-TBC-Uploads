// Example 6.6, Page No-276
clear
clc

N=2
fh=2000
C=0.1*10^-6
R=1/(2*%pi*fh*C)
Rkohm=R/1000
printf('R= %.1f kohm', Rkohm)

alpha1=0.765
alpha2=1.848
A1=3-alpha1
A2=3-alpha2

Rf1byRi1=A1-1
Rf2byRi2=A2-1

printf('\nRf1/Ri1= %.3f', Rf1byRi1)
printf('\nHence, take Rf1=12.35 kohm and Ri1=10 kohm')
printf('\nRf2/Ri2= %.3f', Rf2byRi2)
printf('\nHence, take Rf2=15.2 kohm and Ri2=100 kohm')
