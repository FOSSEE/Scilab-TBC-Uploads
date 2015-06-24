//Ex_7_8
clc;
clear;
close;
format('v',6);
//given data : 
Beta=%inf;//Current gain
VBE=0.7;////V
VB=0;//V(For large Beta)
VE=VB-VBE;////V
disp(VE,VB,"(a) Value of VB(V) & VE(V) are : ");
//Part (b)
R1=5;///kohm
R2=5;///kohm
VCC=10;///V
VEE=-15;///V
VE=VBE;////V
VC=VEE+R1/R2*(VCC-VBE);//V
disp(VC,VE,"(b) Value of VE(V) & VC(V) are : ");

