//Example 11.8(b)
clc;

//Given values of bridge elements
R1=32.7;
R2=1.36;
R3=100;
R4=100;
L1=50*10^-3;
//To find r
r=R4*R1/R3-R2;
disp(r,'Value of resistence r of coil is')
//For the calculation of inductance
//we have R3*L2=R4*L1
L2=L1*R4/R3;
disp(L2,'Value of Inductance L of Coil is')