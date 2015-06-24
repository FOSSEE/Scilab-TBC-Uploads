//Example 8//frequency
clc;
clear;
close;
r=3;//m
w=10;//s^-1
vs=r*w;//m/s
A=6;//m
fd=5/%pi;//s^-1
vmax=A*2*%pi*fd;//m/s
v=330;//m/s
n=340;//Hz
nmax=((v+vmax)/(v-vs))*n;//Hz
nmin=((v-vmax)/(v+vs))*n;//Hz
disp(nmax,"maximum frequency is,(Hz)=")
disp(nmin,"minimum frequency is ,(Hz)=")
