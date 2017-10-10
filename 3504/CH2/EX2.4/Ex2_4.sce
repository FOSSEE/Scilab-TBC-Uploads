//To find the power dissipated in the resistor R in the ladder network shown in the given figure.
clc;
R=1                                 //Resistance(ohm)
Z=[2 -1 0;-1 3 -1;0 -1 3]
D=det(Z)
Z_2=[2 1 0;-1 0 -1;0 0 3]
D_2=det(Z_2)
i_2=D_2/D                          //Current(A)
P=(i_2)^2*R
disp(P,'Power dissipated in the resistor R(W)')
