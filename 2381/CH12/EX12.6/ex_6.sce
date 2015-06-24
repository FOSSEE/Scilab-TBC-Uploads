//Example 6//frequency
clc;
clear;
close;
v=330;//m/s
n=500;//Hz
vs=30;//km h^-1
vs1=vs*(1000/3600);//m/s
n3=((v+vs1)/(v-vs1))*n;//Hz
disp(round(n3),"frequency when cars are approaching is ,(Hz)=")
n1=((v-vs1)/(v+vs1))*n;//Hz
disp(round(n1),"frequency when cars have crossed  is ,(Hz)=")
