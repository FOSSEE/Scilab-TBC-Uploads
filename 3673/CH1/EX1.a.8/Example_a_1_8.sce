//Example 1_8 page no:25
clc;
R1=6;
R2=4;
R3=10;
V1=6;
V2=12;
I1=V1/(R1+R2);
I2=V2/(R2+R3);
Va=I1*R2;
Vb=I2*R2;
Vab=-Va+V2+Vb;
disp(Vab,"the voltage across a and b is (in V)");
//value of I2 is rounded off in text book so result varies slightly
