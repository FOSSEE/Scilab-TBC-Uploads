//Example 1_17
clc;
clear;
close;
format('v',5);
//given data :
V1=12;//V
V2=10;//V
R1=2;//ohm
R2=1;//ohm
R3=10;//ohm
//Node A : I1=(V1-VA)/2
//Node B : I2=(V2-VB)/2
//IL=VB/R3;//A
//IL=I1+I2 
VA=10;VB=10//V
I1=(V1-VA)/2;//A//from Node A
I2=(V2-VB)/2;//A//from Node B
IL=VB/R3;//A
disp(I1,"Current by Battery A, IA(A)");
disp(I2,"Current by Battery B, IA(A)");
disp(IL,"Load Current(A)");
