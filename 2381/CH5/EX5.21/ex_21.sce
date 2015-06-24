//Example 21 //speed
clc;
clear;
close;
rt=4/1;//
ss=332;//m/s
rd=32/28;//ratio of densities
rt1=((1+(1/rt)*rd)/(1+(1/rt)));//
v1=ss*sqrt(rt1);//m/s
disp(v1,"speed of sound in nitrogen is,(m/s)=")
