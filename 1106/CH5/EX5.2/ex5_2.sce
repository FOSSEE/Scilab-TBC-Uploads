// Example 5.2, Page No-239
clear
clc

R1=56*10^3
R2=150
Vi=1
f=50
Vsat=13.5
Vref=0

Vut=Vsat*R2/(R1+R2)
Vut=Vut*1000
printf('Vut= %d mV', Vut)
VL=-Vut
printf('\nVL= %d mV', VL)


