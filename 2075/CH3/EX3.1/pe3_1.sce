//example 3.1
clc; funcprot(0);
// Initialization of Variable
Ip=3;
f=150000;
t=5e-6;
//calculation
T=1/f;
It=Ip/T;
disp(It/1000,"ramp current in kAt/s")
I5=It*t;
disp(I5,"current at 5 micro sec in A")
clear()
