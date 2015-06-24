//Example 2.8.2://ARITHEMATIC MEAN
clc;
clear;
format('v',6)
v=[10,11,12,13,14];//
f=[03,12,18,12,03];//
q=[v(1)*f(1),v(2)*f(2),v(3)*f(3),v(4)*f(4),v(5)*f(5)];
am=[q(1)+q(2)+q(3)+q(4)+q(5)];//
n=[f(1)+f(2)+f(3)+f(4)+f(5)];//
AM= am/n;//arithematic mean 
for i= 1:5
    qb(i)= v(i)-AM;
    m(i)=f(i)*qb(i);//
end
sm=[-m(1)-m(2)+m(3)+m(4)+m(5)];//
md=sm/n;//
sm1=[f(1)*qb(1)^2,f(2)*qb(2)^2,f(3)*qb(3)^2,f(4)*qb(4)^2,f(5)*qb(5)^2];//
sm2=[sm1(1)+sm1(2)+sm1(3)+sm1(4)+sm1(5)];//
sd=sqrt(sm2/n);//standard deviation
disp(AM,"arithematic mean is in volts")
disp(md,"mean deviation is")
disp(sd,"standard deviation is")
