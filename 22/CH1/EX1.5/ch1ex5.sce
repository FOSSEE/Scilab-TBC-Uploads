//signals and systems
//time reversal
clear
close
clc
t=[-6:0.1:6];
a=gca();
plot(t,exp(t/2).*((t>=-5)&(t<=-1)));
figure
a.thickness=2;
a.y_location="middle";
xtitle=('the signal x(t)')
//by replacing t by -t we get
a=gca();
plot(t,exp(-t/2).*((t>=1)&(t<5)));
a.thickness=2;
a.y_location="middle";
xtitle=('the signal x(-t)')
//the coordinates can be easily observed from the graphs

