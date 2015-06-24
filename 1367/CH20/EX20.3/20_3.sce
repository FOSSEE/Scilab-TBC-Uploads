//Find how much loss will occur in 300 hours
//Ex:20.3
clc;
clear;
close;
x1=0.1;//in mm
t1=25;//in hours
t2=300;//in hours
x2=x1*sqrt(t2/t1);//in mm
disp(x2,"Oxidation loss in 300 hours (in mm) = ");