//Exam:15.2
clc;
clear;
close;
U=1200;//electron mobility in cm2/Volt-sec
e=1.6*10^(-19);//charge on the electron in C
n=10^13;//concentration of phosphorus
sigma=U*e*n;//conductivity of crystal in mho/cm
p_i=1/sigma;//resistivity of silicon wafer if all donor atom are active
disp(p_i,'resistivity of silicon wafer if all donor atom are active(in ohm-cm)=');