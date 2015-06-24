// Chapter7
// Page.No-253
// Example_7_9
// Determine  the output voltage
//Figure 7.62
// Given
clc;
clear;
K=0.1;
t=(0:0.01:0.5)';
Vin=2*sin(2*60*%pi*t);
Vout=K*Vin^2;

plot(t,Vout,t,Vin)
xtitle(" Input(Green)  signal &  Output (Blue)signal","t","V");//result
