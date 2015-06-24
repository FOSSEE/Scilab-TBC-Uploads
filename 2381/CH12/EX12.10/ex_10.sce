//Example 10//frequency
clc;
clear;
close;
sa=1.5;//km
oa=1;//km
so=sqrt(oa^2+sa^2);//km
csd=sa/so;//
v=0.33;//km/s
n=400;//Hz
vlov=120*(1000/3600);//m/s
vs1=(1/30)*csd;//km/s
nd=((v)/(v-vs1))*n;//vibrations/sec
disp(round(nd),"apparent frequency is,(vibrations/second)=")
