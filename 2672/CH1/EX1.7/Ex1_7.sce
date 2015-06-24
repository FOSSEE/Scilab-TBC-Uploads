//Example 1_7
clc;
clear;
close;
format('v',5);
//given data :
//11*I2+8*I3=4 from loop GDAG
//8*I2+11*I3=6 from loop HDAH
A=[11 8;8 11];//coefiicient matrix
B=[4;6];//coefiicient matrix
X=A^-1*B;//Matrix multiplication
I2=X(1);//A
I3=X(2);//A
I8=I2+I3;//A
disp(I8,"Current in 8 ohm resistor(A)");
