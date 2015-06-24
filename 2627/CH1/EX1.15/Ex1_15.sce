//Ex 1.15
clc;clear;close;
format('v',6);
E1=10;//V
V2=6;//V
V3=8;//V
//E1=V1+V2;//KCL for left loop
V1=E1-V2;//V
//-E2=-V2-V3;//KCL for right loop
E2=V2+V3;//V
disp(V1,"Voltage V1(V)");
disp(E2,"Voltage E2(V)");
