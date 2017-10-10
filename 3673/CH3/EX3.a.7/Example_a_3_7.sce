//Example_a_3_7 page no:137
clc;
R1=10;
R2=3;
R3=6;
V1=50;
V2=10;
V3=0;
I=40/16;//by applying kirchof law
V6=R3*I;
Vab=V3+V6+V2;
Rab=3+((R1*R3)/(R1+R3));
disp(Vab,"the thevenin voltage is (in V)");
disp(Rab,"the thevenin resistance is (in ohm)");
