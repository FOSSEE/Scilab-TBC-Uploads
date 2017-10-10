//Example 1_16 page no:33
clc;
R1=5
R2=6
R3=3
R4=3
R5=10
R6=6
R7=2
R8=4
V=100;
R9=1/((1/(R7+R8))+(1/R6));//calculating the resistances
R10=1/((1/(R3+R4))+(1/R2));
Rt=1/((1/13)+(1/8));
It=V/Rt;
I8=20.2*(13/(13+8));
I13=20.2*(8/(13+8));
I5=I8;
I10=I13;
I4=3.845;
I3=6.25;
Va=I3*3;
Vb=I4*4;
Vab=Va-Vb;//voltage calculation
disp(Vab,"the voltage Vab is (in V)");
