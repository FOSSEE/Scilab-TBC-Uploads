//Example 6.4
//Least Square Method
//Page no. 219
clc;close;clear;

t=[0.2,0.4,0.6,0.8,1]
h=[0.196,0.785,1.7665,3.1406,4.9075]
m=2;
for i=1:5
    t1(i)=t(i)^(2*m)
    h1(i)=h(i)*t(i)^2
end
g=sum(h1)/sum(t1)
disp(g,'y = ')
g=g*2
disp(g,'Gravitational Constatnt :')