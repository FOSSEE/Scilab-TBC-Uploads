//Exa 1.1
clc;
clear;
close
// given data
t1=38;// in degree C
t2=21;// in degree C
k=0.19;// unit less
x=4;//in cm
x=x*10^-2;// in meter
// Formula q=k*A*(t1-t2)/x;
q_by_A=k*(t1-t2)/x;
disp("The rate of heat transfer is : "+string(q_by_A)+" W/m^2");
