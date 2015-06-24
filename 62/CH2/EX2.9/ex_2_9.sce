//Example 2.9:Convolution Integral 
clear;
close;
clc;
t =-2:1/100:2;
for i=1:length(t)
    if t(i)<-1|t(i)>1 then
        x(i)=0;
    else
        x(i)=1;
    end
end
ty=-2:1/100:4;
for i=1:length(ty)
    if ty(i)<-1|ty(i)>3 then
        y(i)=0;
    elseif ty(i)<1
        y(i)=1+ty(i);
    else
        y(i)=3-ty(i);
    end
end
figure
a=gca();
a.x_location="origin";
a.y_location="origin";
plot2d(t,x) 
xtitle('Input Response','t','x(t)');
a.children.children.thickness = 3;
a.children.children.foreground= 2;
figure
a=gca();
a.y_location="origin";
a.x_location="origin";
plot2d(ty,y) 
xtitle('Output Response','t','y(t)');
a.children.children.thickness = 3;
a.children.children.foreground= 2;
//since it is a time invariant system for x(t-2) o/p is y(t-2)
ty1=ty+2;
figure
a=gca();
a.y_location="origin";
a.x_location="origin";
plot2d(ty1,y) 
xtitle('Output Response','t','y(t-2)');
a.children.children.thickness = 3;
a.children.children.foreground= 2;
//since the system is linear,for x(t)/2 o/p is y(t)/2
figure
a=gca();
a.y_location="origin";
a.x_location="origin";
plot2d(ty,y./2) 
xtitle('Output Response','t','.5*y(t)');
a.children.children.thickness = 3;
a.children.children.foreground= 2;