// Example 7.4, Page No-330
clear
clc

fo=1000
Vcc=12
R1=10*10^3
R2=10*10^3
C=0.1*10^-6
R=1/(2.2*C*fo)
R=R/1000
printf('R= %.3f kohm', R)

