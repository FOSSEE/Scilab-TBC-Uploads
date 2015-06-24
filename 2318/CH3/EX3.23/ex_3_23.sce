//Example 3.23:Resistance and inductance
clc;
clear;
close;
//given data :
R2=250;// in ohm
R3=100;// in ohm
R4=200;// in ohm
r1=43.1;// in ohm
R1=(R2*R3/R4)-r1;
r=229.7;// in ohm
C=1*10^-6;// in F
disp(R1,"Resistance,R1(ohm) = ")
L1=(C*R3/R4)*(r*(R4+R2)+(R2*R4));
disp(L1,"inductance,L1(H) = ")
