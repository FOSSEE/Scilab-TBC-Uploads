//example 1.9
clc; funcprot(0);
// Initialization of Variable
Vp=6;//V
Ra=10;//Kohm
Rb=1800;//ohm
V=8;
//solving for Ir & Vo
A=[1 -124.6e-6; 7800 -1];
B=[134.6e-6;0];
x=inv(A)*B;
Vo=x(2,1);
disp(Vo,"output voltage in V:")
Va=Vo+V;
Vb=Vo-V;
disp(Va,Vb,"V- & V+ in V:")
clear()
