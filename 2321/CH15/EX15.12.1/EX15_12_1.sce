//Example No. 15.12.1
clc;
clear;
close;
format('v',7);

d=2000;//km
H=200;//km
fc=6;//MHz
f_MUF=fc*sqrt(1+(d/2/H)^2);//MHz
disp(f_MUF,"MUF in MHz : ");
