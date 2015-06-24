clc
//initialization of variables
clear
L=1 //m
w=10 //kg
h=50 //cm
A=1 //cm^2
E=2*10^6 //kg/cm^2
Ar=1 //cm^2
Ec=3*10^4 //kg/cm^2
// For steel
del=w*L*100/(A*E)
P=w*(1+sqrt(1+(2*h/del)))
printf('Stress in steeel = %d kg/cm^2 ',P)

// for cloth laminate
del=w*L*100/(A*Ec)
P=w*(1+sqrt(1+(2*h/del)))
printf('\n Stress in cloth laminate = %.1f kg/cm^2 ',P)
