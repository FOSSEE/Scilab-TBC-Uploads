//Example 5_18
clc;
clear;
close;
format('v',6);
//given data : 
e=1.6*10^-19;//C/electron
VT=0.026;//V//Thermal Voltage
IBYI0=-90/100;//ratio
//Part (a)
//I=I0*(exp(V/VT)-1)
V=log(IBYI0+1)*VT;//V
disp(V,"(a) Required Voltage is (V)");
//Part (b)
format('v',5);
V=0.05;//V(Forward bias)
ratio=(exp(V/VT)-1)/(exp(-V/VT)-1);//ratio
disp(ratio,"(b) Current ratio");
//Part (c)
format('v',6);
I0=15;//micro A
V=[0.1 0.2 0.3]*1000;//mV
VT=VT*1000;//mV
I1=I0*(exp(V(1)/VT)-1)/1000;//mA 
I2=I0*(exp(V(2)/VT)-1)/1000;//mA 
I3=I0*(exp(V(3)/VT)-1)/10^6;//A 
disp("(c) Current for 0.1 V is "+string(I1)+" mA, for 0.2 V is "+string(I2)+" mA & for 0.3 V is "+string(I3)+" A.");
//Answer given in the book is not accurate.
