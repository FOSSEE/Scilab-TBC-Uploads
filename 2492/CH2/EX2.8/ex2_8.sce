// Exa 2.8
format('v',6)
clc;
clear;
close;
// Given data
V_T= 25*10^-3;// in V
// I = Io*( (%e^(V/V_T))-1 );
I = 1;// in mA
I = I * 10^-3;// in A
V = 0.15;// in V
Io = I/( (%e^((1/V_T)*V))-1 );// in A
Io = Io * 10^6;// in µA
disp(Io,"The reverse saturation current at room temperature in µA is");
// Io doubles for every 10°C-rise in temperature. Thus at 40°C
Io_new= 4*Io;//new value of reverse saturation current in µA
disp(Io_new,"The reverse saturation current at 40 °C in µA is");
I = 100;// in mA
I = I * 10^-3;// in A
// I = Io*( (%e^((1/V_T)*V))-1 );
V = (1/40)*log( I/(Io*10^-6) );// in V
disp(V,"The forward bias voltage in V is");
