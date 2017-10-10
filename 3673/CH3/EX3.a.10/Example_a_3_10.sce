//Example_a_3_10 page no:140
clc;
I=25;
R1=5;
R2=2;
R3=3;
R4=4;
R5=5;
In=I*(R2/(R2+R3+R4));//norton current
Rab=(R5*(R4+R3+R2))/(R5+(R4+R3+R2));
disp(In,"the norton current is (in A)");
disp(Rab,"the norton resistance is (in ohm)");
