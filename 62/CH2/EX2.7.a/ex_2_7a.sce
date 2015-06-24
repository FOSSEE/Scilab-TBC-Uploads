//Example 2.7:Convolution Integral 
clear;
close;
clc;
t =-6:1/100:6;
for i=1:length(t)
    if modulo(t(i),3)==0 then
        h(i)=1;
    else 
        h(i)=0;
    end
    if t(i)<-1 then
        x(i)=0;
    elseif t(i)<0
        x(i)=1+t(i);
    elseif t(i)<1
        x(i)=1-t(i);
    else
        x(i)=0;
    end
end
y = convol(x,h);
figure
a=gca();
a.x_location="origin";
a.y_location="origin";
plot2d(t,h) 
xtitle('Impulse Response','t','h(t)');
a.children.children.thickness = 3;
a.children.children.foreground= 2;
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
t1=-12:1/100:12;
a.y_location="origin";
a.x_location="origin";
plot2d(t1,y) 
xtitle('Output Response','t','y(t)');
a.children.children.thickness = 3;
a.children.children.foreground= 2;