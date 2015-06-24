// Exa 7.10
format('v',7);clc;clear;close;
// Given data
Vd = 4;// vertical division
Va = 0.5;//Vertical attenuation in V/Div
App = Vd*Va;//peak to peak amplitude in V
disp(App ,"The peak to peak amplitude of the signal in V is");
TimebyDiv = 2;//time per division in µs/Div
Hd = 4;// horizontal division
Time = Hd*TimebyDiv;// in µs
f = 1/(Time*10^-6);// frequency of signal in Hz
f = f * 10^-3;// in kHz
disp(f,"The frequency of signal in kHz is");
