clc
// initialization of variables
clear
//part(a)
H=200 //mm
h=100 //mm
rho=10 //mm
Sigma_u=250 //MPa
P=1.5 //kN
L=1.4 //m
b=40 //mm
P=P*10^3
L=L*10^3
Hr=H/h
rh=rho/h
S_cc=1.77
c=h/2
I=b*h^3/12
S_max=S_cc*P*L*c/I
printf('part (a)')
printf('\n Flexural design stress = %.1f MPa',S_max)
//part (b)
SF=Sigma_u*I/(S_cc*P*L*c)
printf('\n part (b)')
printf('\n SF =%.2f ',SF)

