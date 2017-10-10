//Example_a_3_8 page no:138
clc;
V1=10;
V2=5;
R1=5;
R2=2;
R3=1;
R4=4;
V2r=R2*(V1/(R1+R2));
V1r=R3*(V2/R1);
Vab=V2r-V1r;//thevenin voltage
Rab=((R1*R2)/(R1+R2))+((R4*R3)/(R4+R3));//thevenin resistance
disp(Vab,"the thevenin voltage is (in V)");
disp(Rab,"the thevenin resistance is (in ohm)");
