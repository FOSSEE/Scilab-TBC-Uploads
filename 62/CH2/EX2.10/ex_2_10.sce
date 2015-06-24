//Example 2.10:Convolution Integral 
clear;
close;
clc;
t =-3:1/100:8;
s=[];
ss=[];
for i=1:length(t)
    if t(i)<1|t(i)>3 then
        x(i)=0;
    else
        x(i)=1;
    end
    if t(i)<0 then
        s(i)=0;
    else
       s(i)=exp(-t(i)); 
    end
end
figure
a=gca();
a.y_location="origin";
a.x_location="origin";
plot2d(t,s) 
xtitle('Output step Response','t','s(t)');
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
t1=t+1;
t2=t+3;
s=s';
tt=min(min(t1,t2)):1/100:max(max(t1,t2));
ee=zeros(tt);
x=find(tt==-2);
y=find(tt==0);
z=find(tt==9);
for i=1:1:length(tt)
    if i<y then
        ee(i)=s(i);
    elseif i<z
        ee(i)=s(i)-s(i-y+1);
    else
        ee(i)=-s(i-y+1);
    end
end
figure
a=gca();
a.y_location="left";
a.x_location="origin";
plot2d(tt,ee) 
xtitle('Output Response','t','s(t-1)-s(t-3)');
a.children.children.thickness = 3;
a.children.children.foreground= 2;