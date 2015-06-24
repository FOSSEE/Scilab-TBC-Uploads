// Exa 3.15
clc;
clear;
close;
// Given data
T1= 25;// in °C
T2= 100;// in °C
deltaT= T2-T1;// in °C
deltaV_F= -1.8*10^-3;// in mV/°C
I_F= 26;// in mA
V_F1= 0.7;// in V (at T1)
V_F2= V_F1+(deltaT*deltaV_F);// in V (at T2)
// At 25°C
T= 25+273;// in K
rd= 26/I_F*T/298;// in Ω
disp(rd,"Junction dynamic resistance at 25°C in Ω is ")
// At 100°C
T= 100+273;// in K
rd= 26/I_F*T/298;// in Ω
disp(rd,"Junction dynamic resistance at 100°C in Ω is ")
