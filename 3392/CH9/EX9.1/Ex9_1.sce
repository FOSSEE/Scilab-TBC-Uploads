clc
// initialization of variables
clear
a=30 //mm
c=80 //mm
b=50 //mm
P=9.5 //kN
d=100 //mm position of P
//calculations
P=P*10^3
A=b^2
A=b*(c-a)
Am=b*log(c/a)
R=(a+c)/2
p=d+R
Mx=p*P
r=a
S_thB=P/A+(Mx*(A-r*Am))/(A*r*(R*Am-A))
r=c
S_thC=P/A+(Mx*(A-r*Am))/(A*r*(R*Am-A))
printf('The maximum tensile stress is (at point B) = %.1f MPa',S_thB)
printf('\n The maximum cpmpressive stress is (at point C) = %.1f MPa',S_thC)
