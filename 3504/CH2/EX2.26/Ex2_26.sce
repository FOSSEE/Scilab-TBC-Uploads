//To determine the voltage V_ab across the terminals a,b of the given network.
clc;
M_1=[3+%i*5  10;-2+%i*3  0]
D_1=det(M_1)
M_2=[3+%i*5  -2+%i*3;-2+%i*3  5+%i*5]
D_2=det(M_2)
I_2=D_1/D_2
V_ab=I_2*3
disp(V_ab,'Voltage across the terminals a,b of the given network(Polar Form)')





