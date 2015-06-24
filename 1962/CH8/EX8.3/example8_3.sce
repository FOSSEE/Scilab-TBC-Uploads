
//example 8.3
//page 290
clc; funcprot(0);
//initialisation of variable
Gamma=0.92*62.4;
nu=0.0205;
d=9/12;
pi=3.14;
g=32.2;
L=5280;//length
Q=50*2000/Gamma/3600;
A=pi*d^2/4;
V=Q/A;
Re=V*d/nu;
f=64/Re;
hf=f*L/d*V^2/2/g;
Hp=Gamma*Q*hf/550;
disp(Hp,"horse power required ");
clear
