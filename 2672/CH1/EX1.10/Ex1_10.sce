//Example 1_10
clc;
clear;
close;
format('v',5);
//given data :
VD=10;//V
VE=6;//V
R1=3;R2=4;R3=14;R4=8;R5=12;//ohm
//Ohm's current law
//I1=(VD-VB)/R1;I2=VB/R4;I3=(VK-VC)/R2;//A
//Where VK=VB-3;//V
//KCL at Node B  : 17*VB-6*VC=98
//KCL at Node C  : 21*VB-34*VC=27
A=[17 -6;21 -34];//Coefficient Matrix
B=[98;27];//Coefficient Matrix
X=A^-1*B;//solution
VB=X(1);//V
VC=X(2);//V
I2=VB/R4;//A
disp(I2,"Current through the 8 ohm resistor(A) : ");
