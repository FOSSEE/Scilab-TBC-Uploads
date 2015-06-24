clc
clear
//Initialization of variables
dL=1/6 //ft
mf=0.430 //lbm/sec
rho=62.4 
gc=32.2 //ft/s^2
d=0.81/12 //ft
//calculations
V=mf*4/(rho*%pi)
VD=V/dL^2
Vd=1.92 //ft/s
dFf=0.031/(2*gc) *2.31
dFe=0.04*Vd^2 /(2*gc)
dF=dFf+dFe
dp=rho*(3.5/(2*gc) +dF)
vd22=(2*gc)/rho *dp /(1-(d/dL)^4)
vd2=sqrt(vd22)
C=Vd/vd2
//results
printf("Pressure drop in the nozzle = %.2f lbf/ft^2",dp)
printf("\n Coefficient of discharge = %.3f ",C)
