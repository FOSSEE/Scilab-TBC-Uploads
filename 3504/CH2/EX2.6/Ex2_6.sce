//To find the voltage V_0 in the given circuit.
clc;
R=30
Z=[31 -13 0 0 0 -10 0 0 0;-13 35 -9 0 -11 0 0 0 0;0 -9 31 -10 0 0 0 0 0;0 0 -10 79 -30 0 0 0 -9;0 -11 0 -30 53 -7 0 -5 0;-10 0 0 0 -7 47 -30 0 0;0 0 0 0 0 -30 41 0 0;0 0 0 0 -5 0 0 27 -2;0 0 0 -9 0 0 0 -2 29]
D=det(Z)
Z_4=[31 -13 0 -15 0 -10 0 0 0;-13 35 -9 27 -11 0 0 0 0;0 -9 31 -23 0 0 0 0 0;0 0 -10 0 -30 0 0 0 -9;0 -11 0 -20 53 -7 0 -5 0;-10 0 0 12 -7 47 -30 0 0;0 0 0 -7 0 -30 41 0 0;0 0 0 7 -5 0 0 27 -2;0 0 0 -10 0 0 0 -2 29]
D_4=det(Z_4)
i_4=D_4/D                   //Current(A)
V_0=R*i_4
disp(V_0,'Required voltage(V)')
//Negative sign indicates opposite direction of current.
//Answer in the book is wrong.
