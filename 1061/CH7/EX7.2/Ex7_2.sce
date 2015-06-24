//Ex:7.2
clc;
clear;
close;
n1=1.46;// core refractive index
n=1;// refractive index due to air
a=25*10^-6;// core radius in m
y=3*10^-6;// in m
A=(y/a)*(1-(y/(2*a))^2)^0.5;
B=acos(y/(2*a));
C=n1/n;
M=(16*C^2)/(%pi*(1+C)^4);
n_lat=M*(2*B-A);// coupling efficiency for multimode step index fiber
L_lat=-10*log(n_lat)/log(10);// insertion loss for lateral misalignment
n_lat1=(1/%pi)*(2*B-A);// coupling efficiency when there is no air gap
L_lat1=-10*log(n_lat1)/log(10);// insertion loss for lateral misalignment when there is no air gap
printf("The coupling efficiency for multimode step index fiber =%f", n_lat);
printf("\n The insertion loss for lateral misalignment =%f dB", L_lat);
printf("\n The coupling efficiency when there is no air gap =%f", n_lat1);
printf("\n The insertion loss for lateral misalignment when there is no air gap =%f dB", L_lat1);