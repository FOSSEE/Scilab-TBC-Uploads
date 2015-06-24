
//example 10.8
//page 391
clc; funcprot(0);
//initialisation of variable
b=60;//bottom width
y1=2.5;//depth
g=32.2;
Q=2500;//flow rate
Gamma=62.4//unit weight
V1=Q/b/y1;//velocity
F1=V1/sqroot(g*y1);
k=0.5*(sqroot(1+8*F1^2)-1);//k=y1/y2
y2=k*y1; //depth
V2=Q/b/y2;//velocity
L=y2*4.25;
LE=y2+V2^2/2/g-y1-V1^2/2/g;//loss of energy
TL=Gamma*-LE*2500;
disp(TL,"total loss of energy(ft-lbs/s)");
clear
