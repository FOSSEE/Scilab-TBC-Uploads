//Example 1_16
clc;
clear;
close;
format('v',5);
//given data :
R1=4;//ohm
R2=6;//ohm
R3=8;//ohm
//I1=I2+IS//eqn(1)
//I2+I3=V1/4//eqn(2)
Vo=16;//V
//VAC+VAB=Vo : V1+R1*I2=Vo///eqn(3)
//I1=V1/R2;//eqn(4)
I3=Vo/R3;//A
//V1/4-I2=I3//eqn(5)
//solving eqn(3) & eqn(5)
A=[1 R1;1/4 -1];
B=[Vo;I3];
X=A^-1*B;
V1=X(1);//V
I2=X(2);//A
I1=V1/6;//A
Is=I1-I2;//A
disp(Is,"Current Is(A)");
