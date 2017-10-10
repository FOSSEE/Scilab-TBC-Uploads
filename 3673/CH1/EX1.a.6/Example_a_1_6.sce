//Example 1_6 page no:24
clc;
Vs=30;
R1=5;
R2=4;
R3=2;
R4=4;
R5=1/((1/(R2))+(1/(R3))+(1/(R4)));
Rt=R1+R5;
It=Vs/Rt;//calculating the total current
disp(It,"the total current is (in A)");
