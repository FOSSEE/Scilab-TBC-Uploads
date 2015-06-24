//Example 7.23: weight of the locomotive abd number of axles
clc;
clear;
close;
//given data :
Wl=1;//
W1=400;//
G=2;//in percentage
mu=0.2;//
alpha=1;//
r=40;//
x=(277.8*1.1*alpha+98.1*G+r)/(9.81*1000);//
wlo=(x*W1)/(mu-x);//in tonnes
al=22;//allowable load in tonnes
na=wlo/al;//
disp(wlo,"weight of the locomotive in tonnes")
disp(round(na),"number of axles required")
