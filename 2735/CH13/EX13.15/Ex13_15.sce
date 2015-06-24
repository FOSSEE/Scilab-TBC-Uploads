clc
clear
//Initialization of variables
dFf=110.5 //ft-lbf/lbm
Vd=1028 //ft/s
gc=32.2 //ft/s^2
p0=100 //psia
k=1.4
v0=2.08
p1=55 //psia
p2=99.2 //psia
//calculations
dFe=0.01*Vd^2 /(2*gc)
dF=dFf+dFe
V2ig=(p0*144)^(1/k) *v0/(1-1/k) *((p1*144)^(1-1/k) -(p2*144)^(1-1/k))
C2=(V2ig+dF)/V2ig
C=sqrt(C2)
//results
printf("Coefficient of discharge = %.3f ",C)
