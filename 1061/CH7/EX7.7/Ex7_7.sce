//Ex:7.7
clc;
clear;
close;
n1=1.5;// core refractive index
n=1.47;// refractive index due to air
a=1;// core radius in m
y=0.12;// lateral offset
A=(y/a)*(1-(y/(2*a))^2)^0.5;
B=acos(y/(2*a));
C=n1/n;
M=(16*C^2)/(%pi*(1+C)^4);
n_lat=M*(2*B-A);// coupling efficiency of the splice
L_lat=-10*log(n_lat)/log(10);// insertion loss of the splice
printf("The insertion loss of the splice =%f dB", L_lat);