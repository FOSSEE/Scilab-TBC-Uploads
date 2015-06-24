//example 7.1
clc; funcprot(0);
// Initialization of Variable
T=20;//time
Vp=12;//voltage
t=5;
//calculation
D=t/T;
disp(D,"duty cycle:")
Vd=(D*Vp);
disp(Vd,"average voltage in V:")
clear()
