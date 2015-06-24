// Exa 4.7
clc;
clear;
close;
// Given data
Vout= 6 ;// times Vrms
Vin= 20*10^-3;// times Vrms
f_max= 15;// in kHz
f_max=f_max*10^3;// in Hz
A_CL= Vout/Vin;// at 15 kHz
V_out_peak= 6*1.414;
// Formula f_max= SRmax/(2*%pi*V_out_peak)
SRmax= f_max*2*%pi*V_out_peak*10^-6; // in V/µs
disp("(i) The 741 has an SR of 0.5 V/µs. It is too slow and would distort the sine wave output")
disp("(ii) The 318 has an SR of 50 V/µs. It is fast enough to develop  6 Vrms sine wave output at 15kHz")
f1percent= f_max;// in Hz
// f1percent= fH/7= GBW/A_CL/7= GBW/(7*A_CL)
GBW= 7*A_CL*f1percent;// in Hz
GBW= GBW*10^-6;// in MHz
disp(GBW,"Gain bandwidth in MHz ")
disp("The GBW for 318 op-amp is only 15 MHz. So even though the 318 op-amp satisfies the SR requirement");
disp(" but it does not have a large  enough gain bandwidth to provide a gain of 300 (±1%) at 15 kHz")
GBW10= 7*10*f_max;// Gain of 10 in Hz
GBW30= 7*30*f_max;// Gain of 30 in Hz
disp(GBW10*10^-6,"Gain of 10 in MHz");
disp(GBW30*10^-6,"Gain of 30 in MHz");
disp("The 318 op-amp has a large enough gain bandwidth to operate both amplifiers.")
