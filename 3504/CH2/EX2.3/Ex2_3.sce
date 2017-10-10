//To find the voltage across R,in the given network by mesh analysis.
clc;
R=2                           //Resistance(ohm)
Z=[12 -2 0;-2 34 -2;0 -2 12]
D=det(Z)
Z_1=[5 -2 0;0 34 -2;10 -2 12]
D_1=det(Z_1)
Z_2=[12 5 0;-2 0 -2;0 10 12]
D_2=det(Z_2)
Z_3=[12 -2 5;-2 34 0;0 -2 10]
D_3=det(Z_3)
I_2=D_2/D                 //Current(A)
I_3=D_3/D                 //Current(A)
V_R=(I_2-I_3)*R
disp(V_R,'Required voltage across R(V)')
//Negative voltage shows reverse polarity,with the numerical value being the same.
