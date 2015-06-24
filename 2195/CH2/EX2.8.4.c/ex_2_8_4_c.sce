//Example 2.8.4.c //  error
clc;
clear;
close;
//given data :
format('v',5)
V=100;//in volts
I=5*10^-3;// in A
S=1000;//in ohm/volts
R_app=(V/I)*10^-3;
V1=150;//in volts
Rv=S*V1*10^-3;
Rx=Rv/6.5;//actual resistance in kilo ohms
per=(Rx-R_app)/Rx;//
disp(per*100,"percentage error due to loading effect of voltmeter is")
