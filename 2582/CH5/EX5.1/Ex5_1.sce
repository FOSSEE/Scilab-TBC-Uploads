//Ex 5.1
clc;clear;close;
format('v',5);
R1=100;//kohm
R2=86;//kohm
Vsat=15;//V
VUT=R2/(R1+R2)*Vsat;//V
VLT=R2/(R1+R2)*-Vsat;//V
disp(VUT,"VUT(V) : ");
disp(VLT,"VLT(V) : ");
