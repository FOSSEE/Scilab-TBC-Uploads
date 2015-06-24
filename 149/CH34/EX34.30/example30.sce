clc
syms k
A=[0 1 2 3 4 5 6 7;0 k 2*k 2*k 3*k k^2 2*k^2 7*k^2+k]
disp('sumof all pi=1')
//A(2,1)+A(2,2)+A(2,3)+(A(2,4)+A(2,5)+A(2,6)+A(2,7)
disp('hence, ')
k=1/10
disp('p(x<6)=')
a=A(2,1)+A(2,2)+A(2,4)+A(2,3)+A(2,4)+A(2,5)+A(2,6)
eval(a)
disp(eval(a))
disp('p(x>=6)=')
b=A(2,7)+A(2,8)
eval(b)
disp(eval(b))
disp('p(3<x<5)=')
c=A(2,2)+A(2,3)+A(2,4)+A(2,5)
eval(c)
disp(eval(c))