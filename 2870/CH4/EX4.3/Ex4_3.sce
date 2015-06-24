clc;clear;
//Example 4.3

//given data
P1=100;
V1=0.4;
V2=0.1;

//calculations
//for isothermal W = P1*V1* ln(V2/V1)
W=P1*V1*log(V2/V1);
disp(W,'the work done during this process in kJ')
