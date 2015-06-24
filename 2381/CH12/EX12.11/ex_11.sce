//Example 11//frequency
clc;
clear;
close;
v=1200;//km/h
w=40;//km/h
vs=40;//km/h
n=580;//Hz
nd=((v+vs)/((v+vs)-vs))*n;//Hz
disp(nd,"frequency of the whistle as heared by an observer on the hill is ,(Hz)=")
x=29/30;//km
disp(x*1000,"distance is ,(m)=")
ndd=((v-w)+vs)/((v-w))*nd;//Hz
disp(ndd,"frequency heared by driver is,(Hz)=")
//distance is calculated wrong in the textbook
