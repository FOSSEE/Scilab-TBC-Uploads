clc
// initialization of variables
clear
E=72 //GPa
t=60 //mm
M=24 //kN.m
//part(a)
ro=100 //mm
r1=150 //mm
A=t*r1
Am=t*log((ro+r1)/ro)
R=ro+r1/2
E=E*10^3
Mx=M*10^6
Phi=Am*Mx*%pi/(A*(R*Am-A)*E)
printf('part(a)')
printf('\n Phi = %.5f rad',Phi)
//part(b)
//Mx=Mx+P*R*sin(th)
delta_P=Am*Mx*R*2/(A*(R*Am-A)*E)
printf('\n part(b)')
printf('\n deflection = %.3f mm',delta_P)
