// sum 14-2
clc;
clear;
n=12;
phi=360*%pi/(180*12*2);
R1=45/2;
R2=50/2;
l=60;
Rm=(R1+R2)/2;
p=6.5;
Pn=(R2-R1)*l*p;
T=Pn*Rm;
T=T*n;
N=400;
w=2*%pi*N/60;
P=T*w;
A=(%pi*R1*l)/n;
Ts=Pn/A;
Ah=(%pi*R2*l)/n;
Th=Pn/Ah;

  // printing data in scilab o/p window
  printf("Ts is %0.2f N/mm^2     ",Ts);
  printf("\n Th is %0.2f N/mm^2    ",Th);