//page 238
clear;
close;
clc;
A=[2 -1;-1 2];
S=[2 0;0 2];
T=[0 1;1 0];
p=inv(S)*T;
b=[2 2]';
x=zeros(2,1);
disp(x,'intial v & w:')
x_1=zeros(1,2);
for k=0:25
    x_1=p*x+inv(S)*b;
    x=x_1;
    disp(k,'k=')
    disp(x_1,'v(k+1) & w(k+1)=');
end