clc
// initialization of variables
clear
Mo=96 //kN
P=120 //kN
b1=150 //mm
h1=60 //mm
b2=120 //mm
h2=50 //mm
b3=b1
h3=40 //mm
ro=80 //mm
r1=140 //mm
r2=260 //mm
r3=300 //mm
// calculations
Mo=Mo*10^6 // N.mm
P=P*10^3 // N
A=b1*h1+b2*h2+b3*h3
Am=b1*log(r1/ro)+h2*log(r2/r1)+b3*log(r3/r2)
R=(b1*h1*110+b2*h2*200+b3*h3*280)/A
Mx=Mo+P*R
r=80 //mm
S_th=P/A+(Mx*(A-r*Am))/(A*r*(R*Am-A))

A1=9000 //mm^2
r1=140 //mm
t=50 //mm
Am1=b1*log(r1/ro)
N=120000
S_rr=A1*N/(A*t*r1) + (A*Am1-A1*Am)*Mx/(t*r1*A*(R*Am-A))
printf('Circumferential stress is %.2f MPa',S_th)
printf('\n Radial stress at B1 is %.2f MPa',S_rr)
// to find radial stress at C; 
A1=b1*h1+b2*h2
Am1=b1*log(r1/ro)+h2*log(r2/r1)
r1=260 //mm
t=50 //mm
S_rr=A1*N/(A*t*r1) + (A*Am1-A1*Am)*Mx/(t*r1*A*(R*Am-A))
printf('\n Radial stress at C1 is %.2f MPa',S_rr)
