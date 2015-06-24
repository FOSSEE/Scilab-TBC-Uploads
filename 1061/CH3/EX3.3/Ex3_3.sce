//Ex:3.3
clc;
clear;
close;
n1=1.5;// core refractive index
dl=0.01;//index difference
m=0;// for the dominant mode
v=0;// for the dominant mode
y=1.3;// in micrometer
a=5;// radius in micrometer
k=(2*%pi)/y;
b=k^2*n1^2-(2*k*n1*sqrt(2*dl))/a;
B=sqrt(b);// propagation constant in rad/um
printf("propagation constant=%f rad/um",B);