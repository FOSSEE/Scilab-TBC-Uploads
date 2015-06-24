//Example 1_8
clc;
clear;
close;
format('v',6);
//given data :
//6*I1-3*I2=2 from mesh 1
//-6*I1+14*I2=4 from mesh 2
A=[6 -3;-6 14];//coefiicient matrix
B=[2;4];//coefiicient matrix
X=A^-1*B;//Matrix multiplication
I1=X(1);//A
I2=X(2);//A
disp(I1,"Current in 2ohm & 4ohm resistor(A)");
disp(I2,"Current in 3ohm & 5ohm resistor(A)");
I6ohm=I1-I2;//A(Current in 6ohm resistor)
disp(I6ohm,"Current in 6ohm resistor(A)");
