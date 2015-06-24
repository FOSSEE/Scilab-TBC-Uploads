//example 3.4
clc; funcprot(0);
// Initialization of Variable
f=100000;
Cd=.35//duty cycle
Ip=3;
Ir=.4;
//calculation
Im=Ip-Ir;
T=1/f;
I=Cd*((Ip-Im)/2+Im)
disp(I,"average current in A")
clear()
