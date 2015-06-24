//ex_23 product of discrete signal and unit step function
clear;
clc;
close;
t=-3:3;
x=[3 2 1 0 1 2 3];
//u[1-n]
for i=1:length(t);
    if t(i)<=1 then
        u1(i)=1;
    else
        u1(i)=0;
    end
end
y=x.*u1';
figure
a=gca();
plot2d3(t,y)
plot(t,y,'r.')
xtitle('y[n]','n')
a.y_location='origin'
//u[n+2]-u[n]
for i=1:length(t);
    if t(i)<1 & t(i)>=-2 then
        u2(i)=1;
    else
        u2(i)=0;
    end
end
z=x.*u2';
figure
a=gca();
plot2d3(t,z)
plot(t,z,'r.')
xtitle('z[n]','n')
a.y_location='origin'
//$[n-1]
for i=1:length(t);
    if t(i)==1 then
        del(i)=1;
    else
        del(i)=0;
    end
end
p=x.*del';
figure
a=gca();
plot2d3(t,p)
plot(t,p,'r.')
xtitle('y[n]','n')
a.y_location='origin'

