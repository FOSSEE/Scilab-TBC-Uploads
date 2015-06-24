//Example 2.19://error
clc;
clear;
close;
n=40;//revolutions
rc=0.12;//registration constant
err=n/rc;//energy recorded in kWh is
e2=22000;//volts
e1=110;//volts
i2=500;//amperes
i1=5;//amperes
i=5.25;//amperes
lv=110;//volts
pf=1;//
t=61;//seconds
ae=((sqrt(3)*e2*lv*i*i2*pf*t)/(e1*i1*3600))*10^-3;//kWh
e=((err-ae)/ae)*100;//
disp(-e,"error (slow) is (%)")
