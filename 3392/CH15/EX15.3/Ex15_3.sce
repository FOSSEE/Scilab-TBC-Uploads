clc
// initialization of variables
clear
a=100/2 //mm
Y=1500 //MPa
t=6 //mm
w=800 //mmm
c=200 //mm
a_c=a/c
fl=1.045
w=w*10^-3
t=t*10^-3
a=a*10^-3
A=w*t
Sigma=1/A
K_I=Sigma*sqrt(%pi*a)*fl
printf('part (a)')
printf('\n K_I = %.2f MPa sqrt(m)',K_I)
