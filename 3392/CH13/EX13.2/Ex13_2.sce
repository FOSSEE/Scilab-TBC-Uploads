clc
// initialization of variables
clear
d=3.6 //m
w=2.7 //m
ha=3.0 //m
b=0.9 //m
a=1.2 //m
v=0.29
E=200 //GPa
p=ha*9.8
//part (a)
S_w=124 //MPa
b_a=b/a
M=0.04*p*b^2*10^3
h=sqrt(6*M/S_w)
printf('part (a)')
printf('\n h = %.2f mm',h)
// part (b)
C=0.032/(1+b_a^4)
p=p*10^3
E=E*10^9
b=b*10^3
w_max=C*(1-v^2)*p*b^4/(E*h^3)
printf('\n part (b)')
printf('\n w_max = %.2f mm',w_max)

