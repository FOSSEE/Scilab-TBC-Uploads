//Ex:7.7
clc;
clear;
close;
b=200;
h_ie=1.5*10^3;//in ohms
h_fe=150;
R_l=b*h_ie/h_fe;
printf("Load resistance = %d ohms",R_l); 
