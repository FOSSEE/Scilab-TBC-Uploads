//To find the voltage across the capacitor.
clc;
Z=[4+%i*5  -2  -(1+%i*3);-2  5-%i*2  %i*2;-(1+%i*3)  %i*2  2+%i*2]
D=det(Z)
Z_2=[4+%i*5  5  -(1+%i*3);-2  0  %i*2;-(1+%i*3)  0  2+%i*2]
D_2=det(Z_2)
I_2=D_2/D                                     //Current in loop 1 in polar form
Z_3=[4+%i*5  -2  5;-2  5-%i*2  0;-(1+%i*3)  %i*2  0]
D_3=det(Z_3)
I_3=D_3/D                                    //Current in loop 2 in polar form
V_c=(I_2-I_3)*(-%i*2)
disp(V_c,'Volatge across the capacitor')
