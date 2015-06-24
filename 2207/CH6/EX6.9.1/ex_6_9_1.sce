//Example 6.9.1 : pulse width and output voltage
clc;
clear;
close;
//given data :
v=220;//in volts
vo=660;//in volts
toff=100;//in micro seconds
ton=((vo*toff)/v)-toff;//in micro secondsT=ton+toff;//in micro seconds
T=ton+toff;
f=(1/T);//in Hz
Vo=((v)/(1-(f*(ton/2))));//in volts
disp(ton,"pulse width (ton) in micro seconds is")
disp(Vo,"new output voltage in volts is")
