// Exa 3.3
clc;
clear;
close;
// Given data
T=300;// in K
V_T= T/11600;// in V
v= 0.3;// forward bias voltage in volt
I= 10;// leakage current in micro amp
I=I*10^-6;// in amp
id= I*(%e^(v/V_T));// in amp
disp(id,"The diode current in amp")
