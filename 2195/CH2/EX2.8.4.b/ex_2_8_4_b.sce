//Example 2.8.4.b //  resistance
clc;
clear;
close;
//given data :
V=100;//in volts
I=5*10^-3;// in A
S=1000;//in ohm/volts
R_app=(V/I)*10^-3;
V1=150;//in volts
Rv=S*V1*10^-3;
Rx=Rv/6.5;//actual resistance in kilo ohms
disp(Rx,"actual resistance in kilo ohms is")
