// Exa 1.1
clc;
clear;
close;
// Given data
T1 = 25;// in degree C
T2 = 100;// in degree C
del_T = T2-T1;// in degree C
V= 0.7;// barrier potential t 25°C in V
del_V = -(2)*del_T;// in mV
del_V= del_V*10^-3;// in V
V_B = V- abs(del_V);// in V
disp(V_B,"(i)  When the junction temperature is 100 °C, the barrier potential of a silicon diode in V is");
T2 = 0;// in degree C
del_T = T2-T1;// in degree C
del_V = -(2)*del_T;// in mV
del_V= del_V*10^-3;//in V
V_B = V+del_V;// in V
disp(V_B,"(ii) When the junction temperature is 0 °C, the barrier potential of a silicon diode in V is");
