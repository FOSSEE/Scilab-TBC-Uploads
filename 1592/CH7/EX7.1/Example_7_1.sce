//Scilab Code for Example 7.1 of Signals and systems by
//P.Ramakrishna Rao
clc;
clear;
a0=2;
a1=2;
a2=4;
x1=[1,3,5,7];
x2=[2,4,6,8];
for t=1:4
    y1(1,t)=a0+a1*x1(t)+a2*(x1(t))^2;
    y2(1,t)=a0+a1*x2(t)+a2*(x2(t))^2;
end
b1=2;
b2=3;
x=b1*x1+b2*x2;
disp('y(n) does not depend on past inputs');
disp('Hence the system is Static');
disp(x,'The input to the system is:');
for t=1:4
    q(1,t)=a0+a1*x(t)+a2*(x(t))^2;
end
disp(q,'This input gives the output:');
y=b1*y1+b2*y2;
disp(y,'For the system to be linear the output should be:');
disp('Hence the system is not linear');
