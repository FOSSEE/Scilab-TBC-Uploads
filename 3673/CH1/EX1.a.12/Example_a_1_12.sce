//Example 1_12 page no:29
clc;
V=10
R1=3;
R2=6;
R3=5;
R4=5;
R5=4;
R6=2.5;
R7=2;
R8=1/((1/R3)+(1/R4));//calculating the resistance values
R9=1/((1/R2)+(1/R7));
R10=1/((1/R6)+(1/R8));
R11=R1+R9;
R12=R5+R10;
Rt=1/((1/R11)+(1/R12));
I=V/Rt;
P=V*I;//calculating the power delivered by the source
disp(P,"the power delivered by the source (in W)");
