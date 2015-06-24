//Example 3.29: Phase angle error and Capacitance
clc;
clear;
close;
//given data :
C1=1*10^-6;// in F
R1=1000;// in ohm
R2=1000;// in ohm
f=1000;// in Hz
r1=10;// in ohm
R3=2000;// in ohm
R4=2000;/// in ohm
C2=C1*R1*10^6/R2;
w=2*%pi*f;
disp(C2,"Unknown capacitance,C2(micro-F) = ")
r2=(R2*(R3+r1)-(R1*R4))/R1;
del1=w*r1*C1*(180/%pi);
del2=r2*w*C2*10^-6*(180/%pi);
disp(del1,"Phase angle error,del1(degree) = ")
disp(del2,"Phase angle error,del2(degree) = ")
