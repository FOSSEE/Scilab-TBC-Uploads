clc;
clear;
format('e',11);
d=0.01;
l=0.0254;
N=20;
A=3.14*(d^2)/4;                     //A=cross section area.
L=4*3.14*10^-7*N^2*A/l;
disp(L,"The inductance of the coil by the first method, L(in H)=");
L=A*4*3.14*10^-7*N^2/(2*sqrt((l/2)^2+A/3.14));
disp(L,"The inductance of the coil by the second method, L(in H)=");
