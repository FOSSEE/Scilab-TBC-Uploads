//Example 1_6
clc;
clear;
close;
format('v',6);
//given data : 
format('v',6);
I=2;//A
//3*I1+8*I2=6 from loop ABCA
//7*I1-5*I2=0 from loop ADCA
A=[3 8;7 -5];//coefiicient matrix
B=[6;0];//coefiicient matrix
X=A^-1*B;//Matrix multiplication
I1=X(1);//A
I2=X(2);//A
I3=I-I1-I2;//A
disp(I3,"Current in branch AB & BC(A)");
disp(I1,"Current in branch AD & DC(A)");
disp(I2,"Current in branch AC(A)");
