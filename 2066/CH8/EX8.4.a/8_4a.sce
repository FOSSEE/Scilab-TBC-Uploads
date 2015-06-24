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
V2=Nm2*sqrt(k*g*R*T2)
//results
printf("Velocity at section 2 = %d ft/s",V2)
