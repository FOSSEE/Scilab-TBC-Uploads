//Example 3.28
//Find the convolution.
clc;
clear;
close;
n=-5:.01:5;
for i=1:length(n)
    if n(i)<0 then
        x1(i)=0;
    else
        x1(i)=1;
    end
    if n(i)<3 then
        x2(i)=0;
    else
        x2(i)=2;
    end
    if n(i)<6 then
        x3(i)=0;
    else
        x3(i)=1;
    end
    x(i)=x1(i)-x2(i)+x3(i);
    if n(i)<-2 | n(i)>9 then
        h(i)=0;
    else
        h(i)=1;
    end
end
y=convol(x,h);
//figure
f=scf(0);
plot(n,h,'red');
xtitle('h[n]');
xs2jpg(0, 'problem43-plot-a.jpg');
//figure
f=scf(1);
plot(n,x,'blue');
xtitle('x[n]');
xs2jpg(1, 'problem43-plot-b.jpg');
//figure
f=scf(2);
n1=-10:.01:10;
plot(n1,y,'green');
xtitle('y[n]');
xs2jpg(2, 'problem43-plot-c.jpg');
