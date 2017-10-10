//Eg-5.5
//pg-223

clear
clc

A=[0.35 0.15;0.15 .1];

a1=zeros(2,1);
a1(1)=trace(A);
A1=A;

for k=2
   A2=A*(A1-a1(k-1)*eye(2,2));
   a1(k)=trace(A2)/k;   
end

c=[1; -a1];

disp("hence coefficients of eigen equation are as follows in decreasing order of polynomial")
disp(c)

p=[c(1),c(2),c(3)];
s=roots(p);

disp("hence eigen valuesi.e principal moments of inertia are....")
disp(s)