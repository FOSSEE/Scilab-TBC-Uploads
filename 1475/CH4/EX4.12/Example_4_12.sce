// Example 4.12 A random sample of 100 ball bearingd selected from a shipment
clc;
clear;
n=100;
x=0.354;
N=2000;
S=0.048;
SE=(S/sqrt(n))*sqrt((N-n)/(N-1));
disp("inch",(x-1.96*SE),"to",(x+1.96*SE),"The 95% confidence limits for the population mean are  ",S,"Sample S.D =",N,"Population size N",n,"Sample size");
