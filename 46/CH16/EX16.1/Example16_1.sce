//Example 16.1
clc
s=%s;
j=%i;
f=10/%pi;
w=2*%pi*f;
G=1/(0.1*s+1);
s=w*j;
Gs=horner(G,s);
disp(Gs,'G(20j)=')
[r,theta]=polar(Gs)
theta=theta*180/%pi;
disp('degrees',theta,'theta=')

