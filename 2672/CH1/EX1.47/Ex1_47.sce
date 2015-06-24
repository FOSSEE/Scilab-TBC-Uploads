//Example 1_47
clc;
clear;
close;
format('v',5);
//given data :
V1=6;//V
V2=5;//V
V3=8;//V
R1=2;//ohm
R2=2;//ohm
R3=5;//ohm
R4=4;//ohm
//Node A :
VA=poly(0,'VA');
I1=(V1-VA)/R1;//A
I2=(V2-VA)/R2;//A
I3=(V3+VA)/R3;//A
//KCL at Node A
eqn=I1+I2-I3;
VA=roots(eqn);//V
VB=-V3;//V
I3=(VA-VB)/R3;//A
disp(I3,"Current flowing through 5 ohm Resistance(A)");
