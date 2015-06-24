//example 3.2
clc; funcprot(0);
// Initialization of Variable
Ip=2;
f=500000;
Ir=.3;
Cd=.4//duty cycle
t1=4e-7;
t2=1e-6;
//calculation
T=1/f;
Im=Ip-Ir;
disp(It=(Ip-Im)*t1/(Cd*T)+Im,"current in time 0<=t<800ns in A")
disp(It=0,"current in time 800ns<=t<2 microsec in A")
I4=(Ip-Im)*t1/(Cd*T)+Im;
disp(I4,"current in time 400ns in A")
I1=0;
disp(I1,"current in time 1 microsec in A")
clear()
