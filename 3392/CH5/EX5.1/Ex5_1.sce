clc
// initialization of variables
clear
// part (b)
K1=2 //N/mm (K1=E1A1/L1)
K2=3 //N/mm (K2=E2A2/L2)
b1=400 // mm (b1=h)
h=400 // mm
b2=300 //mm
u=30 //mm
v=40 //mm
// calculations
// Units convertion
K1=K1*10^3
K2=K2*10^3
b1=b1*10^-3
b2=b2*10^-3
h=h*10^-3
u=u*10^-3
v=v*10^-3
L1=sqrt(b1^2+h^2)
L2=sqrt(b2^2+h^2)
N1=sqrt((b1+u)^2+(h+v)^2)-L1
N2=sqrt((b1+u)^2+(h+v)^2)
N3=sqrt((b2-u)^2+(h+v)^2)-L2
N4=sqrt((b2-u)^2+(h+v)^2)
P=K1*(b1+u)*N1/N2-K2*(b2-u)*N3/N4
Q=K1*(h+v)*N1/N2+K2*(h+v)*N3/N4
// results
printf('part (b)')
printf('\n P = %.1f N',P)
printf('\n Q = %.1f N',Q)
