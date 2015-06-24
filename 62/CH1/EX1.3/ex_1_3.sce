//example_1.3
// sampling of continuos function
clear;
clc;
close;
t=-1:1/100:1;
for i=1:length(t)
    x(i)=1-abs(t(i))
end
figure
a=gca();
plot2d(t,x)
xtitle('x(t)')
a.y_location='middle'
figure
a=gca();
for i=1:length(t)
    if t(i)<0 then
        t1(i)=ceil(t(i)*4)
    else
        t1(i)=floor(t(i)*4)
    end
end
plot2d3(ceil(t1),x)
xtitle('x[n]=x[n/4]')
figure
a=gca();
for i=1:length(t)
    if t(i)<0 then
        t2(i)=ceil(t(i)*2)
    else
        t2(i)=floor(t(i)*2)
    end
end
plot2d3(ceil(t2),x)
xtitle('x[n]=x[n/2]')
figure
a=gca();
for i=1:length(t)
    if t(i)<0 then
        t3(i)=ceil(t(i))
    else
        t3(i)=floor(t(i))
    end
end
plot2d3(ceil(t3),x)
xtitle('x[n]')