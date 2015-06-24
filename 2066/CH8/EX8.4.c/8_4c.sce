clc
clear
//Initialization of variables
T1=584.6 //R
g=32.2 //ft/s^2
k=1.4
R=53.3 //ft-lb/lb R
V1=600 //ft/s
T2=519.6 //R
//calculations
Nm1=V1/(sqrt(k*g*R*T1))
Nm22= ((1+ (k-1)/2 *Nm1^2)/(T2/T1) -1)*(2/(k-1))
Nm2=sqrt(Nm22)
Ar= Nm1/Nm2 *((1+ (k-1)/2 *Nm2^2)/(1+ (k-1)/2 *Nm1^2))^((k+1)/(2*(k-1)))
//results
printf("Area ratio = %.3f",Ar)
