// Example 19.3, page no-542
clear
clc
H=10^4 //A/m
sus=-0.8*10^-5
mu=4*%pi*10^-7
M=sus*H
B=mu*(M+H)
printf("The flux density in the material is %.2f * 10^-2 Wb.m^-2",B*10^2)
