clc
// initialization of variables
clear
E=200 //GPa
v=0.29
Y=315 //MPa
h=10 //mm
D=200 //mm
SF=2.0
//part (a)
a=D/2
E=E*10^3
Py=1 // Since unknown
S_maxk=3/4*Py*a^2/h^2
Py=Y/S_maxk
w_max=3/16*(1-v^2)*Py*a^4/(E*h^3)
printf('Py = %.2f MPa',Py)
printf('\n W_max = %.3f mm',w_max)
// part (b)
Pw=Py/SF
printf('\n part (b)')
printf('\n Pw = %.2f MPa',Pw)
