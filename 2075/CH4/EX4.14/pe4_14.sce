//example 4.14
clc; funcprot(0);
// Initialization of Variable
R=8//resistance
V=5//voltage
//calculation
Vl=V-1;
Vp=Vl-1;
Vr=Vp/2^.5;
P=Vr^2/R;
disp(P*1000,"pwer deliverd in mwatt")
clear()
