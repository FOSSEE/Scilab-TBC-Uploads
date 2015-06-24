//Example 2.9
//Z transform of the signal x(n)=(a)^n*u(n)+(b)^n*u(-n-1).
clear;clc;
xdel(winsid());

//u(n)is unit step input 
//a=0.5 and b=0.6
n1=2;
x1=(0.5)^n1;
m1=1;
w1=1;
phi1=tand(0);
a1=1;
theta1=tand(45);
[X1]=czt(x1,m1,w1,phi1,a1,theta1)
n2=2;
x2=(0.6)^n2;
m2=1;
w2=-1;
phi2=tand(-45);
a2=1;
theta2=tand(45);
[X2]=czt(x2,m2,w2,phi2,a2,theta2)
X=X1+X2;
disp(X,"ans=")
