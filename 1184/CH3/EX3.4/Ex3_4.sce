//Example 3-4, Page No - 108

clear
clc

R = 40
I = 4.8
m=0.9

Pc = I^2*R
Pt = (I*(1+(m^2/2))^0.5)^2*R
Psb = Pt-Pc

printf('The carrier power is %.1f watt\n Total power = %.1f watt\n Sideband Power =%.1f watt',Pc,Pt,Psb)
