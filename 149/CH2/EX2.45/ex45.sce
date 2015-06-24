clear
clc
x=poly([0],'x')
A=[1 4;2 3]
I=eye(2,2)
disp("eigen values of A are ")
spec(A)
disp("let ")
a=-1;  
b=5;
disp("hence,the characteristic equation is (x-a)(x-b) ")
p=(x-a)*(x-b)
disp("A^2-4*A-5*I=")
A^2-4*A-5*I
disp("inverse of A= ")
inv(A)