//Page Number: 515
//Example 9.24
clc;
//Given
E=10; //W
T=1D-9; //s
c=3D+8; //m/s
lam=650D-9; //m

//Pulse Power
P=E/T;
disp('W',P,'Pulse Power:');

//Q value
Q=(c*T)/lam;
disp(Q,'Q value:');
