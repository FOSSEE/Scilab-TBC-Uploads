//Scilab Code for Example 7.9 of Signals and systems by
//P.Ramakrishna Rao
clc;
clear x y1 y y2 q t n;
clear;
//y(t)=exp|x(n)|
x1=[1,3,5,3];//random variable
x2=[2,4,6,4];
for n=1:4
    y1(1,n)=exp(abs(x1(n)));
    y2(1,n)=exp(abs(x2(n)));
end
b1=2;
b2=3;
x=b1*x1+b2*x2;
disp(x,'The input to the system is:');
for n=1:4
    q(1,n)=exp(abs(b1*(x1(n))+b2*(x2(n))));
end
disp(q,'This input gives the output:');
y=b1*y1+b2*y2;
disp(y,'For the system to be linear the output should be:');
disp('(ii)    Hence the system is not linear');
disp('For a delay (n0) of 2 seconds');
disp('At n=3 seconds:');
n=4;
a=exp(abs(x1(n-2)));
b=y1(1,n-2);
disp(a,'e^x(n-n0):');
disp(b,'is equal to y(n-n0):');
disp('(iii)    Hence the system is Time invariant');
