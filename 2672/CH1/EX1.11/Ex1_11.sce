//Example 1_11
clc;
clear;
close;
format('v',5);
//given data :
VA=24;//V
VC=12;//V
R1=6;R2=6;R3=6;//ohm
//Considering VA only, making VC short circuit
I=VA/(R1+R2*R3/(R2+R3));//A//from source VA
I1A=I*R2/(R1+R2);//A//through BD from VA only
//Considering VC only, making VA short circuit
I=VC/(R3+R1*R2/(R1+R2));//A//from source VC
I1C=I*R2/(R1+R2);//A//through BD from VA only
IBD=I1A+I1C;//A
disp(IBD,"Current IBD in the Circuit(A) : ");
