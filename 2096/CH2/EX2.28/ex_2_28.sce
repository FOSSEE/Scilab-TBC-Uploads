//Example 2.28 //resistive and reactive component
clc;
clear;
close;
//given data :
C1=190*10^-12; // in farad
C2=170*10^-12; // in farad
Q1=75; 
Q2=45;
f=200; // in kilo-Hz
w=2*%pi*f*1000;
Rx=((C1*Q1)-(C2*Q2))/(w*C1*C2*Q1*Q2);
Xx=(C1-C2)/(w*C1*C2);
disp(Rx,"the resistive,Rx(ohm) = ")
disp(Xx,"the reactive component,Xx(ohm) = ")
