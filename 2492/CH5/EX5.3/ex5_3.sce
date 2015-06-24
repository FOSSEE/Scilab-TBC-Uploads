// Exa 5.3
format('v',6)
clc;
clear;
close;
// Given data
R1 = 30;// in ohm
R2 = 40;// in ohm
R3 = 60;// in ohm
R4 = 40;// in ohm
R5 = 70;// in ohm
// z-parameters
z11= R1+(R2*(R1+R2)/(R2+(R1+R2)))
disp(z11,"The value of z11 in ohm is : ");
z22= R3+R4*R5/(R4+R5);
disp(z22,"The value of z22 is : ");
z12= R2*R4/(R1+R2+R4);
disp(z12,"The value of z12 is : ");
z21= R2*R4/(R1+R2+R4);
disp(z21,"The value of z21 in mho is : ");
