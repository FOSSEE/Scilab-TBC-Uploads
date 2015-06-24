//Example 3.25:Resistance and inductance
clc;
clear;
close;
//given data :
R2=1000;// in ohm
R3=16800;// in ohm
R4=833;// in ohm
C4=0.38*10^-6;// in F
f=50;// in Hz
w=2*%pi*f;
L1=(R2*R3*C4)/(1+w^2*C4^2*R4^2);
disp(L1,"Inductance,L1(H) = ")
R1=(R2*R3*R4*w^2*C4^2)/(1+w^2*C4^2*R4^2);
disp(R1,"Resistance,R1(ohm) = ")
