clc
//initialization of new variables
clear
u=15 //m/s
D=0.1 //m
u1=10 //m/s
u2=10 //m/s
rho=1000 //kg/m^3
th=60 //degrees
//calculations
th=th*%pi/180
A=%pi*D^2/4
Fx=rho*u^2*A*(cos(th)-1)
//result
printf('Force on the wedge is  Fx = %.1f N',Fx)
printf('\n Fz = 0 N')
