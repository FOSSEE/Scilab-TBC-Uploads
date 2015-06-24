//Example 5.3 // resistance of the heater element
clc;
clear;
close;
w=15;// in kg
t1=15;// in degree celsius
t2=100;//in degree celsius
t=25;// time in minutes
I=10;// in ampere
n=85;//efficiency of conversion in percentage
ho=w*(t2-t1);//output heat required in kcal
R=((ho*4187*100)/(I^2*t*60*n));// resistance in ohms
disp(R,"resistance in ohms")
