////Ex 4.9
clc;
clear;
close;
format('v',5);
I2=1;//mA
Rf=4.7;//kohm
//Case 1st
I1=500;//micro A
Vout1=-I1*10^-6*Rf*10^3;//V
disp(Vout1,"For 500 micro A current, Output Voltage(V)");
//Case 2nd
I2=1;//mA
Vout2=-I2*10^-3*Rf*10^3;//V
disp(Vout2,"For 1 mA current, Output Voltage(V)");
deltaVout=Vout2-Vout1;//V
disp(deltaVout,"Variation in Output Voltage(V)");
