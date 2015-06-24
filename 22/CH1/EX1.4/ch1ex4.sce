//signals and systems
//time scaling
clear
close
clc
t=[-4:0.1:6];
a=gca();
plot(t,2.*((t>-1.5)&(t<=0))+2*exp(-t/2).*((t>0)&(t<=3)));
figure
a.thickness=2;
a.y_location="middle";
xtitle=('the signal x(t)');
//compressing this graph by a factor 3
a=gca();
plot(t,2.*((t>-0.5)&(t<=0))+2*exp(-3*t/2).*((t>0)&(t<=1)));
figure
a.thickness=2;
a.y_location="middle";
xtitle=('the signal x(3t)');
//expanding this signal by a factor 2
a=gca();
plot(t,2.*((t>-3)&(t<=0))+2*exp(-t/4).*((t>0)&(t<=6)));
a.thickness=2;
a.y_location="middle";
xtitle=('the signal x(t/2)');
//the coordinates can b easily obtained from the graphs
