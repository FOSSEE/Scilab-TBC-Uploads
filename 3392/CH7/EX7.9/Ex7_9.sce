clc
// initialization of variables
clear
Y=280 //MPa
AB=40 //mm
BC=60 //mm
//calculations
Y=Y*10^6
alpha=atan(BC/AB)
C11=20/3 //mm
C12=-10 //mm
C21=-20/3 //mm
C22=10 //mm
Beta=atan((C11-C21)/(C22-C12))
Phi=%pi/2+Beta
d=sqrt((AB/2-C11)^2+(BC/2-C22)^2)
d=d*10^-3 //m
At=1/2*AB*BC/2*10^-6
Mp=At*Y*d
printf('Mp = %.3f kN.m',Mp/10^3)
