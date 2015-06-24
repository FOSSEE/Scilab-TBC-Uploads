clc
// initialization of variables
clear
P=120 //kN
b1=120 //mm
b2=120 //mm
h1=48 //mm
h2=24 //mm
P=P*10^3
A=h1*b1+b2*h2
R=(b1*h1*96+b2*h2*180)/A
Am=b1*log(b1/72)+h2*log(240/b2)
r=72
Mx=364*P
S_thB=P/A+(Mx*(A-r*Am))/(A*r*(R*Am-A))

r1=120 //mm
t=24 //mm
A1=h1*r1
Am1=r1*log(r1/r)
S_rr=(A*Am1-A1*Am)*Mx/(t*r1*A*(R*Am-A))
printf('Circumferential stress is %.1f MPa',S_thB)
printf('\n Radial stress is %.1f MPa',S_rr)
