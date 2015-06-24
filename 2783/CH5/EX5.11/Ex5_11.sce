clc
//initialization of new variables
clear
L=20 //m
D=6 //cm
th=40 //degrees
Q=7.63 //L/s
rho=900 //kg/m^3
mu=0.18 //N s/m^2
g=9.8 //m/s^2
//calculations
th=th*%pi/180
R=D/2*10^-2
S=%pi*R^2
U=Q*10^-3/S
Re=rho*U*D*10^-2/mu
f=64/Re
Hf=f*L/D*U^2/(2*g)*10^2
Dp=rho*g*(L*sin(th)+Hf)
P=Dp*Q*10^-3
//result
printf('Power = %.1f W',P)
