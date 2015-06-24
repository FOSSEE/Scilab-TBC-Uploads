//example 4.7
clc; funcprot(0);
// Initialization of Variable
p2=2;//pressure
p1=1;//pressure
T1=540;//temperature
Rbar=1545;
M=28.97;
P1=14.7*144;
T2=p2/p1*T1;
disp(T2,"temperature in degreeR");
v3=Rbar/M*T2/P1;
disp(v3,"specific volume in ft^3/lb");
clear()
