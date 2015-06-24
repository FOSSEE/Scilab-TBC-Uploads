//Example 1_15
clc;
clear;
close;
format('v',6);
//given data :
V=2;//V
R1=1;//ohm
R2=2;//ohm
R3=3;//ohm
R4=2;//ohm
R5=4;//ohm
//Mesh ABDA: -I1-R5*I3+R4*I2=0
//Mesh BCDB: -R2*(I1-I3)+R3*(I2+I3)+R5*I3=0
//Mesh ABCA: -I1-R2*(I1-I3)+V=0
A=[-R1 R4 -R5;-R2 R3 R3+R2+R5;-R3 0 R2];//coefficient matrix
B=[0;0;-V];//coefficient matrix
X=A^-1*B;//
I3=X(3);//A
disp(I3,"Current through galvanometer, I3(A)");
