//Ex:1.25
clc;
clear;
close;
E=6;// electric field strength in V/m
n=120*%pi;// efficiency
H=E/n;// magnetic field strength in Amp/m
printf("The magnetic field strength = %f mA/m", H*1000);