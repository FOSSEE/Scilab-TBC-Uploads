clear
clc
x=poly([0],'x')
A=[1 1 3;1 3 -3;-2 -4 -4]
disp("eigen values of A are ")
spec(A)
disp("let ")
a=4.2568381;  
b=0.4032794;  
c=-4.6601175; 
disp("hence,the characteristic equation is (x-a)(x-b)(x-c) ")
p=(x-a)*(x-b)*(x-c)
disp("inverse of A= ")
inv(A)