//Scilab Code for Example 7.7 of Signals and systems by
//P.Ramakrishna Rao
clc;
clear x y1 y y2 q t n;
clear;
//y(t)=n*x(n)
disp('y(n) depends only upon present inputs');
disp('(i)    Hence the system is Dynamic');
x1=[1,3,5,3,2,5,3,9];//random variable
x2=[2,4,6,4,2,4,2,1];
for n=1:4
    y1(1,n)=n*x1(n);
    y2(1,n)=n*x2(n);
end
b1=2;
b2=3;
x=b1*x1+b2*x2;
disp(x,'The input to the system is:');
for n=1:4
    q(1,n)=n*x(n);
end
disp(q,'This input gives the output:');
y=b1*y1+b2*y2;
disp(y,'For the system to be linear the output should be:');
disp('(ii)    Hence the system is linear');
disp('For a delay (n0) of 2 seconds');
disp('At n=3 seconds:');
t=3;
a=x(1,n-2);
b=y(1,n-2);
c=2*x(1,n-2);
disp(a,'x(n-n0):');
disp(b,'is not equal to y(n-n0):');
disp(c,'while (n-n0)*x(n-n0):');
disp('(iii)    Hence the system is Time variant');
