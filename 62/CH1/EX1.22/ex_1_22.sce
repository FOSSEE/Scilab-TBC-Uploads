//ex_22 product of x(t) and unit step function
clear x;
clear t;
clear;
clear y;
clc;
close;
t=-1:1/100:2
for i=1:(length(t))
    if t(i)<0 then
        x(i)=t(i)+1;
    elseif t(i)<1
        x(i)=1
    else
        x(i)=2
    end
end
figure
a=gca();
plot2d(t,x)
a.y_location='origin'
xtitle('x(t)','t')
//a.x(t)*u(1-t)
for i = 1:(length(t))
    if t(i)<1  then
        u1(i)=1
    else
        u1(i)=0
    end
end
y=x.*u1
figure
a=gca();
plot2d(t,y)
a.y_location='origin'
xtitle('x(t)*u(1-t)','t')
for i = 1:(length(t))
    if t(i)<1 & t(i)>0 then
        u2(i)=1
    else
        u2(i)=0
    end
end
y=x.*u2;
figure
a=gca();
plot2d(t,y)
a.y_location='origin'
xtitle('x(t)*u(t-1)','t')
for i = 1:(length(t))
    if t(i)==3/2 then
        z(i)=x(i)
    else
        z(i)=0
    end
end
figure
a=gca();
plot2d3(t,z)
poly_1=a.children.children;
poly_1.thickness=3;
a.y_location='origin'
xtitle('x(t)*delta(t-3/2)','t')
