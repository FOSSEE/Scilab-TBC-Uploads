//Eg-5.14
//pg-252

clear
clc

A=[1 3 6;3 5 7;6 7 4];
k=1;
summ=0;
for i=2:3
    summ=summ+A(1,i)^2;
end
sig=summ^.5;

w1=0;
w2=(.5*(1+(abs(A(1,2)/sig))))^.5;
w3=A(1,3)/(2*sig*w2);

w=[w1;w2;w3];

B=eye(3,3)-2*w*w';
A1=inv(B)*A*B;

disp("required tridiagonal matrix is")
disp(A1)