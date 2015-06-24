//Example 1.68// voltmeter reading
clc;
clear;
close;
//given data :
f1=25; // in Hz
f2=100; // in Hz
R=300; // in ohm
L=0.12; // in H
XL1=2*%pi*f1*L;
V_ac=15; // in volts
Z1=sqrt(R^2+XL1^2);
Vr1=V_ac*(R/Z1);
XL2=2*%pi*f2*L;
Z2=sqrt(R^2+XL2^2);
Vr2=V_ac*(R/Z2)
disp(Vr1,"the voltmeter reading at f1,Vr1(V) = ")
disp(Vr2,"the volt meter reading at f2, Vr1(V) = ")
