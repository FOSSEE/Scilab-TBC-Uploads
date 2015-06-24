clc;
L=1;  //length in m
r=0.2*10^-3;  //radius in m
A=%pi*(r)^2;  //calculating area
disp(A)
R=2;  //resistance in Ohm
P=(R*A)/L;  //calculating resistivity
disp(P,"Resistivity in Ohm. metre = ");  //displaying result