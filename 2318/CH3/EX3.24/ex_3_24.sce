//Example 3.24:Resistance and inductance
clc;
clear;
close;
//given data :
R2=1000;// in ohm
R3=500;// in ohm
R4=1000;// in ohm
R1=(R2*R3/R4);
r=100;// in ohm
C=3*10^-6;// in F
disp(R1,"Resistance,R1(ohm) = ")
L=(C*R2/R4)*(r*(R4+R3)+(R3*R4));
disp(L,"inductance,L(H) = ")
