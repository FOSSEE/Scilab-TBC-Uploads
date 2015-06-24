//Example 2.7.6;//resistance ,frequency
clc;
clear;
close;
//given data :
format('v',6)
li=3.7;//leakage current in mA
c1=0.1;//in micro farads
vp=16;//in volts
vv=1;//in volts
n=0.7;//
ip=0.7;//in milli amperes
iv=6;//in mA
f=1000;//in Hz
rb1=5.5;//in killo ohms
t=(1/f)*10^3;//in ms
tg=50;//in micro seconds
r2=((tg*10^-6/(c1*10^-6)));// in ohms
r1=500 ;//in ohms assume
vs=(r1+(rb1*10^3)+r2)*(li*10^-3);//in volts
r=((t*10^-3)/(c1*10^-6*log(1/(1-n))))*10^-3;//in killo ohms
rmin=(vs-vv)/iv;//minimum resistance in killo ohms
rmax=(vs-vp)/ip;//maxium resistance in killo ohms
fmin=(1/(rmax*10^3*c1*10^-6*log(1/(1-n))));//minimum frequency in Hz
fmax=(1/(rmin*10^3*c1*10^-6*log(1/(1-n))))*10^-3;//minimum frequency in Hz
disp(vs,"Voltage is ,(V)=")
disp(r,"charging resistance in kilo ohm is")
disp(rmin,"minimum resistance in kilo ohm is")
disp(rmax,"maximum resistance in kilo ohm is")
disp(fmin,"minimum frequency is Hz is")
disp(fmax,"maximum frequency in kHz is")
//mimimum frequency is calculated wrong in the textbook

