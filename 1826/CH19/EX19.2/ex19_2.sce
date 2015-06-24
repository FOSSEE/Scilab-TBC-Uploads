// Example 19.2, page no-542
clear
clc
H=10^4 //A/m
sus=3.7*10^-3
mu=4*%pi*10^-7
M=sus*H
B=mu*(M+H)
printf("The magnetisation in the material is %.0f A/m and flux density in the material is %.2f * 10^-2 Wb.m^-2",M,B*10^2)
