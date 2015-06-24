clc
// initialization of variables
clear
// linked to 6_5
A=3 //cm^2
E= 2*10^6 //kg/cm^2
nu= 0.25
l= 60 //m
L=150 //cm
d=0.5 //cm
dd=10 //cm
D=180 //cm
//calculations
K=(l*100/(A*E))+(L*D/2*D*32*2*(1+nu)/(E*%pi*dd^4*2))
P=d/K
Ts=P/A
fs=dd*D*P*32/(%pi*4*dd^4)

// results
printf('The tensile stress is %.1f kg/cm^2',Ts)
printf('\n Maximum shear stress is %.1f kg/cm^2',fs)
