//maximun and minimun of functions
//example 6.7
//page 218
clc;clear;close;
x=[1.2 1.3 1.4 1.5 1.6];
y=[0.9320 0.9636 0.9855 0.9975 0.9996];
for i=1:4
    d1(i)=y(i+1)-y(i);
end
for i=1:3
    d2(i)=d1(i+1)-d1(i);
end
p=(-d1(1)*2/d2(1)+1)/2;
disp(p,'p=');
h=0.1;
x0=1.2;
X=x0+p*h;
printf(' the value of X correct to 2 decimal places is : %0.2f',X);
Y=y(5)-0.2*d1(4)+(-0.2)*(-0.2+1)*d2(3)/2;
disp(Y,'the value Y=');
