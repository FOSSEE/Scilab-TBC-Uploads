//Resistance R, Voltage V
close();
clear;
clc;
R1 = 6;//ohm
R2 = 1;
R3 = 2;
R4 = 3;
R5 = 10;
V1 = 10;//V
V2 = 20;
//Short circuiting V1
//Equvalent resistance across V2 'Req'
Req = R5+(R1*R2/(R1+R2)+R3+R4)/(R4*(R1*R2/(R1+R2)+R3));
I_1 = -V2/Req;
//Short circutng V2
A = [-(R1+R2) R2 0;R2 -(R2+R3+R4) R4;0 R4 -(R3+R4)];
C = [-V1;0;0];
B = inv(A)*C;
I1 = B(1,1);
I2 = B(2,1);
I3 = B(3,1);
I_2 = I3;
I = I_1+I_2;
mprintf('I = %0.2f A',I);