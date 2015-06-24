//Example 6.9.2 :chopping frequency and new output voltage
clc;
clear;
close;
format('v',8)
//given data :
v=200;//in volts
vo=600;//in volts
ton=200;//in micro seconds
x=-((v/vo)-1);//
f=x/(ton*10^-6);//
ton1=ton/2;//
Vo=((v)/(1-(f*ton1*10^-6)));//in volts
disp(f,"chopping frequency in Hz is")
disp(Vo,"new output voltage in volts is")
