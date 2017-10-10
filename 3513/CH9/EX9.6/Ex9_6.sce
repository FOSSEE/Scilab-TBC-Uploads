//Determine the probability of survival of the system
//page no 220
clear
clc;
t=1500;
dt=1.56*10^-5;
dr=2*10^-5;
df=1.7*10^-5;
ds=dt+dr+df;
RS =%e^(-ds*t);
mprintf("\Rs = %.4f \n",RS);
