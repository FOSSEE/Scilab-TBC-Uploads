//Scilab Code for Example 7.8 of Signals and systems by
//P.Ramakrishna Rao
clc;
clear x y1 y y2 q t n;
clear;
//y(t)=sum(x(n)),n-2<=n=<n+2
x1=[1,3,5,3,0,0,0,0,0,0];//random variable
x2=[2,4,6,4,0,0,0,0,0,0];
for n=1:4
    y1(1,n)=x1(n)+x1(n+1)+x1(n+2)+x1(n+3)+x1(n+4);
    y2(1,n)=x2(n)+x2(n+1)+x2(n+2)+x2(n+3)+x2(n+4);
end
b1=2;
b2=3;
x=b1*x1+b2*x2;
disp(x,'The input to the system is:');
for n=1:4
    q(1,n)=x(n)+x(n+1)+x(n+2)+x(n+3)+x(n+4);
end
disp(q,'This input gives the output:');
y=b1*y1+b2*y2;
disp(y,'For the system to be linear the output should be:');
disp('(i)    Hence the system is linear');
