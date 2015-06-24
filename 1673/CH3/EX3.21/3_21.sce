//hermite's interpolation formula
//exammple 3.21
//page 110
clc;clear;close;
x=[2.0 2.5 3.0]
y=[0.69315 0.91629 1.09861]
deff('y=f(x)','y=log(x)')
h=0.0001;
for i=1:3
    y1(i)=(f(x(i)+h)-f(x(i)))/h;
end
deff('y=l0(x)','y=(x-2.5)*(x-3.0)/(-0.5)*(-1.0)')
a=poly(0,'x');
disp(l0(a),'l0(x)=');
deff('y=l1(x)','y=((x-2.0)*(x-3.0))/((0.5)*(-0.5))')
a=poly(0,'x');
disp(l1(a),'l1(x)=');
deff('y=l2(x)','y=((x-2.0)*(x-2.5))/((1.0)*(0.5))')
a=poly(0,'x');
disp(l2(a),'l2(x)=');
dl0=(l0(x(1)+h)-l0(x(1)))/h;
dl1=(l1(x(2)+h)-l1(x(2)))/h;
dl2=(l2(x(3)+h)-l2(x(3)))/h;
x0=2.7;
u0=[1-2*(x0-x(1))*dl0]*(l0(x0))^2;
u1=[1-2*(x0-x(2))*dl1]*(l1(x0))^2;
u2=[1-2*(x0-x(3))*dl2]*(l2(x0))^2;
v0=(x0-x(1))*l0(x0)^2;
v1=(x0-x(2))*l1(x0)^2;
v2=(x0-x(3))*l2(x0)^2;
H=u0*y(1)+u1*y(2)+u2*y(3)+v0*y1(1)+v1*y1(2)+v2*y1(3);
printf(' the approximate value of ln(%0.2f) is %0.6f:',x0,H);
