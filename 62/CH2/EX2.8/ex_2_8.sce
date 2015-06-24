//Example 2.8:Convolution Integral 
clear;
close;
clc;
t =-4*10:1/100:4*10;
t2=-4:1/100:0;
for i=1:length(t2)
    if t2(i)<-2  then
        x(i)=1;
     else
        x(i)=0;
    end
end
fac=ceil(length(t)/length(t2));
s=[];
for i=1:fac;
   s=[s ;x];
end
y = convol(s,s)./2000;
figure
a=gca();
a.x_location="origin";
a.y_location="origin";
b=find(t==8);
c=find(t==-8);
plot2d(t(c:b),s(c:b)) 
xtitle('Input Response','t','x(t)');
a.children.children.thickness = 3;
a.children.children.foreground= 2;
figure
a=gca();
t1=-8*10:1/100:8*10;
a.y_location="origin";
a.x_location="origin";
b=find(t1==8);
c=find(t1==-8);
plot2d(t1(c:b),y(c:b)) 
xtitle('Output Response','t','y(t)');
a.children.children.thickness = 3;
a.children.children.foreground= 2;