//Exam:5.5
clc;
clear;
close;
n=6*10^23;//conduction electron per m^3
conductivity=6.5*10^7;//in mho/m
E=1;//electric field intensity (in V/m)
e=1.6*10^-19;
m=9.1*10^-31;
Mobility=conductivity/(n*e);//in m^2/V-s
v=Mobility*E;//drift velocity(in m/sec)
disp(Mobility,'mobility of condution electron(in m^2/V-s)=');
disp(v,'drift velocity(in m/sec)=');