
//example 9.14
//page 349
clc; funcprot(0);
//initialisation of variable
z=100;//elevation
f=0.0125;//using iteration
L=10000;
L2=1000;
D=2;
g=32.2;
pi=3.14;
V=sqrt(2*g*z/f/L*D);
Q=pi*D^2/4*V;
x=34-10-f*L2*V^2/2/g/D-V^2/2/g;
disp(30-x,"minimum depth of ridge(ft)=");
clear
