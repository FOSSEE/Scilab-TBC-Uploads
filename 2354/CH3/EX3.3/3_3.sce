//example 3.3
clc; funcprot(0);
// Initialization of Variable
patm=14.7;//in lbf/in^2
mpiston=100;
g=32.2;
A=1;//area
mair=0.6;
delu=18;
k=1.6;//V2-V1;
P=mpiston*g/A/32.2/144+14.7;
W=P*k*144/778;
Q=W+mair*delu;
disp(Q,"Heat transferred in Btu")
W2=patm*k*144/778;
disp(W2,"Work done in Btu");
delz=k/A;
PE=mpiston*g*delz/32.2/778;
Q2=W2+PE+mair*delu;
disp(Q2,"Heat transferred in Btu")
clear()
