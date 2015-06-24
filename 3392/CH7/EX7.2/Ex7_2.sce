clc
// initialization of variables
clear
P1=1.5 //kN
P2=4.5 //kN
// part (a)
A=1000 //mm^2
A1=500 //mm^2
A2=500 //mm^2
//calculation
A=A*10^-6
A1=A1*10^-6
A2=A2*10^-6
y1=25*10^-3
y2=55*10^-3
c1=(A1*y1+A2*y2)/A
c2=60*10^-3-c1 // c1+c2=60 mm
y_1=c1-25*10^-3
y_2=c2-5*10^-3
b1=50*10^-3
h1=10*10^-3
h2=50*10^-3
b2=10*10^-3
Ix=1/12*b1*h1^3 + A1*y_1^2 + 1/12*b2*h2^3 + A2*y_2^2
printf('part (a)')
R1=2550 //N
Vy=750 //N
Mx=975 //N.m
S_zzT=Mx*c1/Ix
S_zzC=Mx*(-c2)/Ix
printf('\n Maximum Tensile stress = %.1f MPa',S_zzT/10^6)
printf('\n Maximum Compressive stress = %.1f MPa',S_zzC/10^6)
