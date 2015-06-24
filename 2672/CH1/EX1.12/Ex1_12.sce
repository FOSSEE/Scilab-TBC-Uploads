//Example 1_12
clc;
clear;
close;
format('v',5);
//given data :
VA=75;//V
VB=64;//V
R1=5;R2=5;R3=4;R4=20;R5=12;//ohm
//Considering VA only, making VB short circuit
I=VA/(R1+(R3*R5/(R3+R5)+R2)*R4/(R4+R3*R5/(R3+R5)+R2));//A//from source VA
I1A=I*R4/(R4+R2+R3*R5/(R3+R5));//A//through AB from VA only
//Considering VB only, making VA short circuit
I=VB/(R3+(R1*R4/(R1+R4)+R2)*R5/(R5+R1*R4/(R1+R4)+R2));//A//from source VB
I1B=I*R5/(R5+(R1*R4/(R1+R4)+R2));//A//through AB from VB only
IAB=I1A-I1B;//A//total current through R2=5 ohm
disp(IAB,"Current I in the Circuit is equal to IAB(A) : ");
