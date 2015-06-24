clc
//Initialization of variables
//part (a)
D1=0.239 //ft
//part (b)
g=32.2 //ft/s^2
Zo=200 //ft
f=0.02
l=1000 //ft
D=8 //in
R=3/2 //ft
D=D/12 //ft
k=550 //ft.lb/s to hp
W=-1.04e6*D1^2/(1+152*D1^4)^(3/2)
W=W/k
Di=D1
V1=sqrt(2*g*Zo/(1+f*l/D*(Di/D)^4))
omega=V1/(2*R)
omega=omega*60/(2*%pi) // rad/s to rpm
printf('D1 = %.3f ft',D1)
printf('\n Maximum power = %.1f hp',W)
printf('\n omega = %d rpm',omega)
