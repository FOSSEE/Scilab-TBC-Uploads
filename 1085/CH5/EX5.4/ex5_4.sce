//Exam:5.4
clc;
clear;
close;
t=10^(-14);//mean free time between the collisions(in second)
e=1.6*10^-19;
m=9.1*10^-31;
Mobility=e*t/m;//in m^2/V-s
disp(Mobility,'mobility of condution electron(in m^2/V-s)=');