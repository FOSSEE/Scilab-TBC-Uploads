clc;
clear;
a=0.5;
b=0.25;
n=-10:10;
for i=1:length(n)
    if n(i)<0 then
        x(i)=0;
        h(i)=0;
    else
        x(i)=b^n(i);
        h(i)=a^n(i);
    end
end
y=convol(x,h);
n1=-20:20;
plot2d3(n1,y)
