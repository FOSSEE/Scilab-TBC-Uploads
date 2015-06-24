clear;
clc;

//Example1.14[Non-linear equation in two variable]
//x1=x, x2=y
function[f]=f2(x)
f(1)=x(1)-x(2)-4;
f(2)=x(1)^2+x(2)^2-x(1)-x(2)-20;
deff('[f]=f2(x)',['f_1=x(1)-x(2)-4','f_2=x(1)^2+x(2)^2-x(1)-x(2)-20'])
//To get the desired output assign an initial value such as x0=[1,1], [xs,fxs,m]=fsolve(x0',f2)
