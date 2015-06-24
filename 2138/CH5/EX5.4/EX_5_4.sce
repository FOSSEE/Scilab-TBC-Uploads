//Example 5.4 // potential difference across the heater element
clc;
clear;
close;
w=20;// in kg
t1=10;// in degree celsius
t2=90;//in degree celsius
t=2*3600+19*60+34;// time in seconds
I=4;// in ampere
n=80;//efficiency of conversion in percentage
ho=w*(t2-t1);//output heat required in kcal
V=((ho*4187*100)/(I*t*n));// POTENTIAL DROP IN VOLTS
disp(V,"potential drop across heater element in volts is")
