//Example 16.4.
clear ; clc; close ;
t= 0:0.1:20;
for i=1:length(t);
if(t(i)<=5)
x(i)=(15/5)*t(i);
elseif(t(i)>=5&t(i)<=15)
x(i)=-3.2*t(i)+30;
elseif(t(i)>=15&t(i)<=20)
x(i)=(15/5)*t(i)-60;
end
end
for i=1:length(t)
if(x(i)>3)
y(i)=x(i);
elseif(x(i)<=3)
y(i)=3;
end
end
plot2d(t,y,2,'011','',[0,0,20,16]);
a=gca();
xtitle('output voltage','t','Vo')