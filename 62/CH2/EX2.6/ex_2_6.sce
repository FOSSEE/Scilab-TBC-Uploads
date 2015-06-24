//Example 2.6:Convolution Integral 
clear;
close;
clc;
t =-5:1/100:5;
for i=1:length(t)
    if t(i)<0 then
        h(i)=0;
        x(i)=0;
    elseif t(i)<=2
        h(i)=1;
        x(i)=1;
    elseif t(i)<=3
        h(i)=0;
        x(i)=1;
    else
        h(i)=0;
        x(i)=0; 
    end
end
y = convol(x,h)./100;
figure
a=gca();
a.x_location="origin";
plot2d(t,h) 
xtitle('Impulse Response','t','h(t)');
a.children.children.thickness = 3;
a.children.children.foreground= 2;
figure
a=gca();
plot2d(t,x) 
xtitle('Input Response','t','x(t)');
a.children.children.thickness = 3;
a.children.children.foreground= 2;
figure
a=gca();
t1=-10:1/100:10;
a.y_location="origin";
a.x_location="origin";
plot2d(t1,y) 
xtitle('Output Response','t','y(t)');
a.children.children.thickness = 3;
a.children.children.foreground= 2;