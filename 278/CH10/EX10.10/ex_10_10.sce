//find max noraml and shear stress
clc
//solution
//given
//ref fig 10.25
D=50//mm
s=15//mm
P=10000//N
e=200//mm
//let t is thickness of throat
//A=t*pi*D
pi=3.14
A=0.707*s*pi*D//mm^2
t=P/A//N/mm^2
M=P*e//N-mm
Z=pi*.707*s*D^2/4//mm^3
fb=M/Z//N/mm^2
ftmax=(0.5*fb)+(0.5*sqrt(fb^2+4*t^2))//N/mm^2
Tmax=(0.5*sqrt(fb^2+4*t^2))//N/mm^2
printf("the max normal stress and shear stress are,%f N/mm^2\n,%f N/mm^2 respectively",ftmax,Tmax)
