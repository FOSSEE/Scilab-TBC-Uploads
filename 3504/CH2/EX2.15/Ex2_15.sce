//To determine the voltage V_23 of the given network.
clc;
Z=[(1/2)+(1/3)  -(1/3)  -(1/2);-(1/3)  (1/3)+(1/(%i*4))  0;-(1/2)  0  (1/2)+(1/(%i*2))]
D=det(Z)
Z_2=[(1/2)+(1/3)  1  -(1/2);-(1/3)  0  0;-(1/2)  0  (1/2)+(1/(%i*2))]
D_2=det(Z_2)
Z_3=[(1/2)+(1/3)  -(1/3)  1;-(1/3)  (1/3)+(1/(%i*4))  0;-(1/2)  0  0]
D_3=det(Z_3)
V_2=D_2/D
V_3=D_3/D
V_23=V_2-V_3
//Using Cramer's rule
disp(V_23,'Required voltage in the polar form(V)')
