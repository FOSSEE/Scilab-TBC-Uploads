clc
syms k
A=[0 1 2 3 4 5 6;k 3*k 5*k 7*k 9*k 11*k 13*k]
disp('sumof all pi=1')
//A(2,1)+A(2,2)+A(2,3)+(A(2,4)+A(2,5)+A(2,6)+A(2,7)
disp('hence, ')
k=1/49
disp('p(x<4)=')
a=A(2,1)+A(2,2)+A(2,4)+A(2,3)
eval(a)
disp(eval(a))
disp('p(x>=5)=')
b=A(2,6)+A(2,7)
eval(b)
disp(eval(b))
disp('p(3<x<=6)=')
c=A(2,5)+A(2,6)+A(2,7)
eval(c)
disp(eval(c))
disp('p(x<=2)=')
c=A(2,1)+A(2,2) +A(2,3)