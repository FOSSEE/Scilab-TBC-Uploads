clc;
clear;
format('v',11);
a=0.05;
b=0.04;
c=0.03;
m=1;
n=1;
v=3*10^8;
//for p=0.
p=0;
fr110=v/2*sqrt((m/a)^2+(n/b)^2+(p/c)^2);
disp(fr110,"fr110(in Hz)=");
//for p=1.
p=1;
fr111=v/2*sqrt((m/a)^2+(n/b)^2+(p/c)^2);
disp(fr111,"fr111(in Hz)=");
