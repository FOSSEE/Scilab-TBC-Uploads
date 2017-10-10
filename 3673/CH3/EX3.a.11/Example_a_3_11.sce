//Example_a_3_11 page no:140
clc;
I=30;
R1=10;
R2=5;
R3=5;
R4=2;
R5=1;
R6=1;
Rab=(R2*(2+((R5*R6)/R4)))/(R2+(2+((R5*R6)/R4)));
In=I*(Rab/6.67);//norton current
disp(In,"the norton current is (in A)");
disp(Rab,"the norton resistance is (in ohm)");
