// Example 4.10, Page No-210
clear
clc

fa=1*10^3
C1=1*10^-6

Rf=1/(2*%pi*fa*C1)
Rf=Rf/100
printf("Rf= %.2f kohm", Rf)
