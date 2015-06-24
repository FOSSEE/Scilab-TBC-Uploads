//Scilab Code for Example 7.5 of Signals and systems by
//P.Ramakrishna Rao
clc;
clear x y1 y y2 q t n;
clear;
//y(t)=x(2*n)
disp('y(n) depends upon past inputs for n<0');
disp('y(n) depends upon future inputs for n>0');
disp('Hence the system is Dynamic');
x1=[1,3,5,3,2,5,3,9];//random variable
x2=[2,4,6,4,2,4,2,1];
for n=1:4
    y1(1,n)=x1(2*n);
    y2(1,n)=x2(2*n);
end
b1=2;
b2=3;
x=b1*x1+b2*x2;
disp(x,'The input to the system is:');
for n=1:4
    q(1,n)=x(2*n);
end
disp(q,'This input gives the output:');
y=b1*y1+b2*y2;
disp(y,'For the system to be linear the output should be:');
disp('Hence the system is linear');
disp('For a delay (n0) of 2 seconds');
disp('At n=3 seconds:');
t=3;
a=x(1,2*n-2);
b=y(1,n-2);
c=x(1,2*n-4);
disp(a,'x(2n-n0):');
disp(b,'is not equal to y(2n-n0):');
disp(c,'while x(2n-2*n0):');
disp('Hence the system is Time variant');
