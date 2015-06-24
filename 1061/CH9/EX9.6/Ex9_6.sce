//Ex:9.6
clc;
clear;
close;
vd=2.5*10^4;// carrier velocity in m/s
w=30*10^-6;// width in m
Bm=vd/(2*%pi*w);
Tm=1/Bm;// max response time in sec
Tm1=Tm*10^9;// max response time in ns
printf("The max response time =%f ns", Tm1);