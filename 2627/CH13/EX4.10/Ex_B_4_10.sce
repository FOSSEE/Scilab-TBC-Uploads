//Ex 4.10
clc;clear;close;
format('v',6);
//Part (a)
ft=88.8;//MHz
N1N2N3=20;//frequency multiplication
fc=ft/N1N2N3;//MHz
disp(fc,"(a) Master oscillator center frequency(MHz)");
delta_ft=75;//kHz
delta_f=delta_ft*1000/N1N2N3;//Hz
disp(delta_f,"(b) Frequency deviation at the output(Hz)");
fm=15;//kHz
DR=delta_f/1000/fm;//Deviation ratio at output
disp(DR,"(c) Deviation ratio at the output");
DR=DR*N1N2N3;//Deviation ratio at antenna
disp(DR,"(d) Deviation ratio at the antenna");
