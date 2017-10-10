//Example 11.9(b)
clc;
f=50;        //frequency in Hz
//Given values of bridge elements
R2=1000;
R3=16500;
R4=800;
w=2*%pi*f;
C4=2*10^-6;
//Value of Rx for Hay's Bridge
Rx=(R4*R2*R3*(w*C4)^2)/(1+(w*R4*C4)^2);
//Value of Lx for Hay's Bridge
Lx=(R2*R3*C4)/(1+(w*R4*C4)^2);
disp(Rx,'Value of resistence is')
disp(Lx,'Value of Inductance is')