//To determine the current through load resistor R of the given circuit.
clc;
Z=[1+%i*1-%i*1+2  -2;-2  2+1]
D=det(Z)
Z_2=[3  1+%i*1;-2  0]
D_2=det(Z_2)
I_2=D_2/D
disp(I_2,'Current through load resistor R(Polar form)')
