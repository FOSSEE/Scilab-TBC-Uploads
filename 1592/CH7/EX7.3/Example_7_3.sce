//Scilab Code for Example 7.3 of Signals and systems by
//P.Ramakrishna Rao
clc;
clear x y1 y y2 q t n;
clear;
//y(n)=x(n)-x(n-1);
disp('y(n) depends upon past inputs also');
disp('Output at n=2 depends upon value of x at n=1');
disp('Hence the system is Dynamic');
x1=[1,3,5,7,2];
x2=[2,4,6,8,3];
for n=2:5
    y1(1,n)=x1(n)-x1(n-1)
    y2(1,n)=x2(n)-x2(n-1)
end
b1=2;
b2=3;
x=b1*x1+b2*x2
disp(x,'The input to the system is:');
for n=2:5
    q(1,n)=x(n)-x(n-1);
end
y=b1*y1+b2*y2;
disp(q,'This input gives the output:');
disp(y,'For the system to be linear the output should be:');
disp('Hence the system is linear');

