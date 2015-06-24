clear;
clc;
//Example 2.2
//full wave rectifier circuit with 60Hz input signal
V_M=10;//(V)peak output voltage
R=0.01;//(MOhm)output load resistance
f=60;//Hz
V_r=0.2;//(V)ripple voltage
C=V_M/(2*f*R*V_r);//capacitance
printf('\ncapacitance=%f microF\n',C)
