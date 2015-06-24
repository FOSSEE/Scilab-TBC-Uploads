//example 1.2
//shifting and scaling discrete signals
clear ;
clc;
close;
t=-2:6;
x(1:3)=0;
for i = 3:(length(t)-3)
  x(i) =i-3;
end
x(i+1)=x(i);
x(i+2:9)=0;
figure
a=gca();
plot2d3(t,x)
plot(t,x,'r.')
xtitle('x[n]')
t1=t+2;
figure
a=gca();
plot2d3(t1,x)
plot(t1,x,'r.')
xtitle('x[n-2]')
a.thickness=2;
t2=-1:1/2:3;
figure
a=gca()
plot2d3(ceil(t2),x)
plot(ceil(t2),x,'r.')
xtitle('x[2n]')
a.thickness=2;
t3=-6:2;
figure
a=gca();
plot2d3(t3,x($:-1:1))
plot(t3,x($:-1:1),'r.')
xtitle('x[-n]')
a.y_location='right';
a.thickness=2;
t4=t3+2;
figure
a=gca();
plot2d3(t4,x($:-1:1))
plot(t4,x($:-1:1),'r.')
xtitle('x[-n+2]')
a.y_location='right';
a.thickness=2;