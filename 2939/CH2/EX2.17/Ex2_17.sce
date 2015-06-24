
// Ex2_17
clc;
// Given:
l=10^-10;// in m
m=100;// in u
h=6.6262*10^-34;// in J.s


// Solution:
v=h/(m*l*1.67*10^-27);// velocity
f=v/l;// frequency

printf("The doppler shift frequency is = %f Hz",f)
