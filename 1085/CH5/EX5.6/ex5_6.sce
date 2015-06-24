//Exam:5.6
clc;
clear;
close;
d=10.5;//density of silver(in gm/cc)
At_w=107.9;
e=1.6*10^-19;
conductivity=6.8*10^5;//in mho/centimeter
N=6.023*10^23;
n=N*d/At_w;//number of free electrons
Mobility=conductivity/(n*e);//mobility of electrons(in cm^2/V-s);
disp(n,'number of free electrons=');
disp(Mobility,'mobility of electrons(in cm^2/V-s)=');