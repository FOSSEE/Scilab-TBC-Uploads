//Scilab Code for Example 7.4 of Signals and systems by
//P.Ramakrishna Rao
clc;
clear x y1 y y2 q t n;
clear;
//y(t)=x(2*t)
disp('y(t) depends upon past inputs for t<0');
disp('y(t) depends upon future inputs for t>0');
disp('Hence the system is Dynamic');
x1=[1,3,5,7,2,5,3,9];//Random Variable
x2=[2,4,6,8,2,4,2,1];
for t=1:4
    y1(1,t)=x1(2*t);
    y2(1,t)=x2(2*t);
end
b1=2;
b2=3;
x=b1*x1+b2*x2;
disp(x,'The input to the system is:');
for t=1:4
    q(1,t)=x(2*t);
end
disp(q,'This input gives the output:');
y=b1*y1+b2*y2;
disp(y,'For the system to be linear the output should be:');
disp('Hence the system is linear');
disp('For a delay (T) of 2 seconds');
disp('At t=3 seconds:');
t=3;
a=x(1,2*t-2);
b=y(1,t-2);
c=x(1,2*t-4);
disp(a,'x(2t-T):');
disp(b,'is not equal to y(2t-T):');
disp(c,'while x(2t-2*T):');
disp('Hence the system is Time variant');
