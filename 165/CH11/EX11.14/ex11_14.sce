//Example 11.14
clc;
//Anderson's Bridge
//Given values of bridge elements
r=496;
R2=200;
R3=1000;
R4=1000;
C=10*10^-6;
//R1 for Anderson's bridge
R1=R2*R3/R4;
//L1 for Anderson's bridge
L1=(r*(R4+R2)+R2*R4)*C*R3/R4;
printf('\nValue of resistence R1 is %.2f ohm\n',R1)
printf('\nValue of inductance L1 is %.4f H\n',L1)