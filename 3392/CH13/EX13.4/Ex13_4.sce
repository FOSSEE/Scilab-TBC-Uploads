clc
// initialization of variables
clear
D=500 //mm
h=5 //mm
Sigma=288 //MPa
E=72 //GPa
SF=2
//part (a)
a=D/2
E=E*10^3
f=Sigma*a^2/(E*h^2)
// w_max/h has to be 2.4 since f=10
Pr=50
p=Pr*E*h^4/a^4
p=p/2
printf('part (a)')
printf('\n Allowable pressure = %d kPa',p*10^3)
// part (b)
q=p*a^4/(E*h^4)
// Corresponding w_max/h = 1.8
w_max=1.8*h
printf('\n part (b)')
printf('\n W_max = %.2f mm',w_max)
