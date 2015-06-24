//Ex 1.2
clc;clear;close;
format('v',5);
I=1.5;//A
R1=2;//ohm
R2=3;//ohm
R3=8;//ohm
V1=I*R1;//V
V2=I*R2;//V
V3=I*R3;//V
disp(V1,"Voltage across R1(V)");
disp(V2,"Voltage across R2(V)");
disp(V3,"Voltage across R3(V)");
V=V1+V2+V3;//V(Supply voltage)
disp(V,"Supply Voltage(V)");
