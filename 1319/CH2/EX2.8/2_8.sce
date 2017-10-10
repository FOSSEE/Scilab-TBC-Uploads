// Conversion to current source and nodal analysis

clc;
clear;

// Nodal Equations
// 1.5*Va-0.5*Vb+0*Vc=5
// 0.5*Va-1.5*Vb+0.5*Vc=0
// 0*Va-0.5*Vb+1*Vc=0

Y=[1.5 -0.5 0;0.5 -1.5 0.5; 0 -0.5 1]; // Admittance matrix
I=[5;0;0];
V=inv(Y)*I;

Va=V(1);
Vb=V(2);
Vc=V(3);

Vab=Va-Vb;

disp('V',Va,'Voltage at node A =')
disp('V',Vb,'Voltage at node B =')
disp('V',Vc,'Voltage at node C =')

disp('V',Vab,'The voltage across AB in the circuit =')
disp('A',Vab/2,'The current in branch AB in the circuit =')
