clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-15.2 Page No.335\n');

//Torque capacity
Ss=30500;
D=1;
L=2;
T1=Ss*%pi*D^2*L/16;

SF=2;

T=T1/SF;

mprintf('\n Torque capacity 1 = %f in-lb.',T);
n=6;
d=0.81;
A=(D-d)*L*n/2;

S=1000;
rm=(1+0.810)/4;

T2=S*A*rm;

mprintf('\n Torque capacity 2 = %f in-lb.',T2);
