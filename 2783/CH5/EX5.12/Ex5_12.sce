clc
//initialization of new variables
clear
Q=5 //L/min
L=10 //m
D=5 //cm
UD=3 //cm
L1=12 //m
K1=0.9
K2=0.2
f=0.025
//calculations
Q=Q*10^-3
D=D*10^-2
R=D/2
UD=UD*10^-2
UR=UD/2
Ur=f*L/D/(f*L1/UD+2*K1+2*K2)
Ur=sqrt(Ur)
Ul=Q/%pi*1/(R^2+Ur*UR^2)
Ql=%pi*R^2*Ul*10^3
//results
printf('Velocity and flow rate in the lower pipe are respectively %.2f m/s %.2f L/s',Ul,Ql)
