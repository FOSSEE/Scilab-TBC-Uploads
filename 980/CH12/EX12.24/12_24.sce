clc;
clear;
format('e',11);
a=0.05;
b=0.04;
c=0.03;
v=3*10^8;
p=1;
//for m=0,n=1.

m=0;
n=1;
fr011=v/2*sqrt((m/a)^2+(n/b)^2+(p/c)^2);
disp(fr011,"fr011(in Hz)=");

//for m=1,n=0.
m=1;
n=0;
fr101=v/2*sqrt((m/a)^2+(n/b)^2+(p/c)^2);
disp(fr101,"fr101(in Hz)=");
