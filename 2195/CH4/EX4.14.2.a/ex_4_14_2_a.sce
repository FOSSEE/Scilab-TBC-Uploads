//Example 4.14.2.a:form factor
clc;
clear;
close;
format('v',6)
T1=3;//
T=0:3;
Vrms=200*(sqrt((1/T1)*(intsplin(T,T^2))));//in volts
Vav=200*(1/T1)*(intsplin(T,T));// in volts
ff=Vrms/Vav;//
disp(ff,"form factor is")
