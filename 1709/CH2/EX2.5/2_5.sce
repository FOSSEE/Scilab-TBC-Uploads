clc
//Initialization of variables
l=20 
b=25
h=8
Vp=2.5
n=20
P=14.7//psia
T=530 //R
t=15 //min
Qp=375 //B/hr
cv=0.1715 //B/lbm F
//calculations
Vroom=l*b*h
Vair=Vroom-Vp*n
m=P*Vair*144/(53.35*T)
dU=n*Qp
U=t*dU/60
dT=U/(m*cv)
//results
printf("Air temperature rise = %d F",dT+1)
