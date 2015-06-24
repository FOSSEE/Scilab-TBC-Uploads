//Example 11.10
//Gauss Seidel Method
//Page no. 382
clc;clear;close;

O=0.5;
A=[-8,8,0;2,-8,4;0,4,-8];       //equation matrix
B=[-1;-1;-1];      //solution matrix
Ov=inv(A)*B;
disp(Ov,'Values = ')
Ox=Ov(1)+(Ov(1)-O)/3
disp(Ox,'O* = ')