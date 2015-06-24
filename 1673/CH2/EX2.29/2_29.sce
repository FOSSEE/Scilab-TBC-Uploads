//quadratic factor by lin's--bairsttow method
//example 2.29
//page 57
clc;clear;close;
deff('y=f(x)','y=x^3-x-1');
a=[-1 -1 0 1];
r1=1;s1=1;
b4=a(4);
deff('b3=f3(r)','b3=a(3)-r*a(4)');
deff('b2=f2(r,s)','b2=a(2)-r*a(3)+r^2*a(4)-s*a(4)');
deff('b1=f1(r,s)','b1=a(1)-s*a(3)+s*r*a(4)');
A=[1,1;2,-1];
C=[0;1];
X=A^-1*C;
dr=X(1,1);ds=X(2,1);
r2=r1+dr;s2=s1+ds;
//second pproximation
r1=r2;s1=s2;
b11=f1(r2,s2);
b22=f2(r2,s2);
h=0.001;
dr_b1=(f1(r1+h,s1)-f1(r1,s1))/h;
ds_b1=(f1(r1,s1+h)-f1(r1,s1))/h;
dr_b2=(f2(r1+h,s1)-f2(r1,s1))/h;
ds_b2=(f2(r1,s1+h)-f2(r1,s1))/h;
A=[dr_b1,ds_b1;dr_b2,ds_b2];
C=[-f1(r1,s1);-f2(r1,s2)];
X=A^-1*C;
r2=r1+X(1,1);
s2=s1+X(2,1);
printf(' roots correct to 3 decimal places are : %0.3f       %0.3f',r2,s2);

