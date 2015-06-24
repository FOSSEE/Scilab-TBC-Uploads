// Example 5.12;load power
clc;
clear;
format('v',6)
// given :
k=600;//in rev./kwh.
nr=5;//number of revolutions
t=20;//time in seconds
lp=(1/k)*nr*((60*60)/t);//power in kW
disp(lp,"load power is,(kW)=")
