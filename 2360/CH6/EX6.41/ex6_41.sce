// Exa 6.41
format('v',7);clc;clear;close;
// Given data
L1 = 52.6;//inductance in mH
R2 = 1.68;//resistance in ohm
// 80*(r1+(J*omega*L1)) = 80*( (R2+r2) + (J*omega*L2) );
L2 = L1;//inductance of the coil in mH
disp(L2,"The inductance of the coil in mH is");
r1 = 28.5;// in ohm
r2 = r1-R2;//resistance of the coil in ohm
disp(r2,"The resistance of the coil in ohm is");
