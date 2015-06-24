// Example 2.2
clc;
clear;
close;
// Given data
format('v',6);
// Part (i)
Vin1= 5;// in µV
Vin1= Vin1*10^-6;// in V
Vin2= -7;//in µV
Vin2= Vin2*10^-6;// in V
Av= 2*10^5;// unit less
Rin= 2;// in MΩ
Vout= (Vin1-Vin2)*Av;// in V
disp(Vout,"The output voltage in volts is : ")


