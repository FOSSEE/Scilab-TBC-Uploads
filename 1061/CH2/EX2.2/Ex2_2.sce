//Ex:2.2
clc;
clear;
close;
c=3*10^8;// speed of light in m/s
v=2*10^8;// in m/s
n1=c/v;
x=75;// in degree
n2=n1*sin((x*3.14/180));
n_2=1.44;
n_a=sqrt(n1^2-n_2^2);// numerical aperture
printf("Numerical aperture = %f",n_a);