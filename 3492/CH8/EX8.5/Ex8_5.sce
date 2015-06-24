clc
//Chapter8
//Ex_5
//Given
u_o=4*%pi*10^-7 //in H/m
u_ri=2*10^3 //
N=200 //no. of turns
d=0.005 //in m
D=2.5*10^-2 //in m
A=%pi*(d^2)/4
l=%pi*D
L=u_ri*u_o*N^2*A/l
disp(L,"Approximate inductance of the coil in Henry is")
