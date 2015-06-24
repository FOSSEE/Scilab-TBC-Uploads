//Ex 5.17
clc;
clear;
close;
format('v',4);
f=10;//kHz
Rf=3.2;//kohm
Ci=0.001;//micro F
dt=5;//micro seconds
dVin=5-(-5);//V(When voltage changes from -5V to +5V)
Vout=-Rf*1000*Ci*10^-6*dVin/(dt*10^-6);//V
disp(Vout,"When voltage changes from -5V to +5V, The output Voltage(V)");
dVin=-5-(+5);//V(When voltage changes from +5V to -5V)
Vout=-Rf*1000*Ci*10^-6*dVin/(dt*10^-6);//V
disp(Vout,"When voltage changes from +5V to -5V, The output Voltage(V)");

