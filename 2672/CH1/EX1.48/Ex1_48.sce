//Example 1_48
clc;
clear;
close;
format('v',5);
//given data :
V1=12;//V
V2=3;//V
V3=6;//V
R1=2;//ohm
R2=8;//ohm
R3=4;//ohm
R4=10;//ohm
R5=12;//ohm
//Node A//I1=I2+I3
VA=poly(0,'VA');
VB=poly(0,'VB');
I1=(V1-VA)/R1;//A
VK=VA-V2;//V
//I2=(VK-VB)/R3;//A
I3=VA/R2;//A
//7*VA-2*VB=56//eqn(1)
A1=[7 -2];//Coefficient Matrix
B1=[56];//Coefficient Matrix
//Node B //I2+I5=I4
I5=(V3-VB)/R5;//A
I4=VB/R4;//A
//15*VA-26*VB=15//eqn(2)
A2=[15 -26];//Coefficient Matrix
B2=[15];//Coefficient Matrix
A=[A1;A2];//Coefficient Matrix
B=[B1;B2];//Coefficient Matrix
X=A^-1*B;//solution Matrix
VA=X(1);//V
VB=X(2);//V
I3=VA/R2;//A
disp(I3,"Current through 8 ohm resistor(A)");
