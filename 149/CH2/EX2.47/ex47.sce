clear
clc
x=poly([0],'x')
A=[2 1 1;0 1 0;1 1 2]
I=eye(3,3)
disp("eigen values of A are ")
spec(A)
disp("let ")
a=1;
b=1;
c=3;
disp("hence,the characteristic equation is (x-a)(x-b)(x-c) ")
p=(x-a)*(x-b)*(x-c)
disp("A^8-5*A^7+7*A^6-3*A^5+A^4-5*A^3+8*A^2-2*A+I =")
A^8-5*A^7+7*A^6-3*A^5+A^4-5*A^3+8*A^2-2*A+I