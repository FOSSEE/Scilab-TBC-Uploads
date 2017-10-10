close();
clear;
clc;
//matrix of coefficient of I1, I2 and I3 'A'
A = [7 -1 0;-1 6 -3;0 -3 13];
C = [10;0;-20]
B = inv(A)*C;
I1 = B(1,1);
I2 = B(2,1);
I3 = B(3,1);
mprintf("By mesh analysis, I3 = %0.2f A",I3);