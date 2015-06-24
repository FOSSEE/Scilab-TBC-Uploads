//Example 1_19
clc;
clear;
close;
format('v',5);
//given data :
E1=2.05;//V
E2=2.15;//V
V3=6;//V
R1=0.05;//ohm
R2=0.04;//ohm
R3=1;//ohm
//Considering E1 only, Make E2 short circuit
I1=E1/(R1+R2*R3/(R2+R3));//A
disp(I1,"Current supplied by battery1(A)");
I1dash=I1*R2/(R2+R3);//A
format('v',6);
//Considering E2 only, Make E1 short circuit
I2=E2/(R2+R1*R3/(R1+R3));//A
disp(I2,"Current supplied by battery2(A)");
I2dash=I2*R1/(R1+R3);//A
I=I1dash+I2dash;//A
disp(I,"Current through 1ohm resistance, Load current(A)");
