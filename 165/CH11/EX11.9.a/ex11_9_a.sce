//Example 11.9(a)
clc;

//Given values of bridge elements
R1=2000;
R2=10000;
R3=1000;
w=3000;        //frequency in rad/s
C1=1*10^-6;
//Value of Rx for Hay's Bridge
Rx=(R1*R2*R3*(w*C1)^2)/(1+(w*R1*C1)^2);
//Value of Lx for Hay's Bridge
Lx=(R2*R3*C1)/(1+(w*R1*C1)^2);
disp(Rx,'Value of resistence is')
disp(Lx,'Value of Inductance is')