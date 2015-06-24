//Ex:7.4
clc;
clear;
close;
n1=1.46;// core refractive index
n=1;// refractive index due to air
a=1;// core radius in m
y=0.12;// lateral offset
A=(y/a)*(1-(y/(2*a))^2)^0.5;
B=acos(y/(2*a));
C=n1/n;
M=(16*C^2)/(%pi*(1+C)^4);
n_lat=M*(2*B-A);// coupling efficiency when there is a smsll air gap
L_lat=-10*log(n_lat)/log(10);// insertion loss when there is a smsll air gap
n_lat1=(1/%pi)*(2*B-A);// coupling efficiency when the joint is indexed matched
L_lat1=-10*log(n_lat1)/log(10);// insertion loss when the joint is indexed matched
printf("The insertion loss when there is a smsll air gap =%f dB", L_lat);
printf("\n The insertion loss when the joint is indexed matched =%f dB", L_lat1);