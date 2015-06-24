clc
clear
//Initialization of variables
k=1.4
R=53.3 //lb-ft/lb R
g=32.2 //ft/s^2
T1=534.6 //R
V1=400 //ft/s
p1=350 //psia
f=0.02
D=6/12 //ft
//calculations
Nm1=V1/sqrt(k*g*R*T1)
Nm2=1/sqrt(k)
p2=p1*(Nm1)/Nm2
fl= log(Nm1/Nm2) + 1/(2*k*Nm1^2) *(1- Nm1^2 /Nm2^2)
L12=fl*2*D/f
ps=p1*Nm1*(1+ (k-1)/2 *Nm1^2)^0.5 /(1+(k-1)/2)^0.5
Nm2=1
fl2= -(k+1)/(4*k) *log((1+ (k-1)/2 *Nm1^2)/(Nm1^2 *(1+ (k-1)/2))) + 1/(2*k*Nm1^2) *(1- Nm1^2 /Nm2^2)
L2=fl2*2*D/f
//results
printf("Limiting pressure = %.1f psia",p2)
printf("\n Distance = %.1f ft",L12)
printf("\n Limiting pressure in adiabatic case = %.1f psia",ps)
printf("\n Distance required = %.1f ft",L2)
