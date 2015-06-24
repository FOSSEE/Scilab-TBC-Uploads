//Example 1.74// power
clc;
clear;
kwh1=15000;//in one kWh
n=150;//no. of revolutions in 45 seconds
Pm= (1*n)/kwh1;//power metered on 150 revolutions
P=(Pm*3600)/45;//POWER
disp(P*1000,"power in watts is")
