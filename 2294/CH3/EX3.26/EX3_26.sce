//Find the step response.
//Example 3.26<i>
clear;
close;
clc;
n=-5:.01:5;
for i=1:length(n)
    if n(i)==2 then
        del1(i)=1;
        del2(i)=0;
    elseif n(i)==3 then
        del1(i)=0;del2(i)=1;
    else
        del1(i)=0;del2(i)=0;
    end
    x1(i)=del1(i)+del2(i);
    if n(i)<0 then
        x2(i)=0;
    else
        x2(i)=1;
    end
end
y=convol(x1,x2);
//figure
f=scf(0);
plot(n,x1,'black');
xtitle('Delta function as input');
 xs2jpg(0, 'problem39-plot-a.jpg');
//figure
f=scf(1);
plot(n,x2,'red');
xtitle('Unit function as input');
 xs2jpg(1, 'problem39-plot-b.jpg');
//figure
f=scf(2);
n1=-10:.01:10;
plot(n1,y,'green');
xtitle('Step function as output');
 xs2jpg(2, 'problem39-plot-c.jpg');
//Example 3.26 <ii>
//Find the step response.
clc;
clear;
close;
n=-5:.01:5;
a=6;
for i=1:length(n)
    if n(i)<0 then
        h(i)=0;x(i)=0;
    else
        h(i)=(-a)^n(i);
        x(i)=1;
    end
end
s=convol(h,x);
//figure
f=scf(0);
plot(n,h,'red');
xtitle('h(n)');
 xs2jpg(0, 'problem40-plot-a.jpg');
//figure
f=scf(1);
plot(n,x,'green');
xtitle('x(n)');
 xs2jpg(1, 'problem40-plot-b.jpg');
//figure
f=scf(2);
n1=-10:.01:10;
plot(n1,s,'blue');
xtitle('s(n)');
 xs2jpg(2, 'problem40-plot-c.jpg');
//Example 3.26<iii>
//Find the step response of the system.
clc;
clear;
close;
n=-5:.01:5;
for i=1:length(n)
    if n(i)<0 then
        h(i)=0;x(i)=0;
    else
        h(i)=1;
        x(i)=1;
    end
end
s=convol(h,x);
//figure
f=scf(0);
plot(n,h,'black');
xtitle('h[n]');
xs2jpg(0, 'problem41-plot-a.jpg');
//figure
f=scf(1);
plot(n,x,'red');
xtitle('x[n]');
xs2jpg(1, 'problem41-plot-b.jpg');
//figure
f=scf(2);
n1=-10:.01:10;
plot(n1,s,'green');
xtitle('s[n]');
xs2jpg(2, 'problem41-plot-c.jpg');
//Example 3.26 <iv>
//Find the step response.
clc;
clear;
close;
n=-5:.01:5;
for i=1:length(n)
    if n(i)<0 then
        h(i)=0;x(i)=0;
    else
        h(i)=((1/2)^n(i))+((-(1/3))^n(i));
        x(i)=1;
    end
end
s=convol(h,x);
//figure
f=scf(0);
plot(n,h,'red');
xtitle('h(n)');
xs2jpg(0, 'problem42-plot-a.jpg');
//figure
f=scf(1);
plot(n,x,'green');
xtitle('x(n)');
xs2jpg(1, 'problem42-plot-b.jpg');
//figure
f=scf(2);
n1=-10:.01:10;
plot(n1,s,'blue');
xtitle('s(n)');
xs2jpg(2, 'problem42-plot-c.jpg');
