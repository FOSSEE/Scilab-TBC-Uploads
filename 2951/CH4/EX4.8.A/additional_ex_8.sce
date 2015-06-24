clc;
clear;

initial_Freq_Dev=5; //frequency in kHz
B_initial=0.5; //modulation index
fm_initial=10;// message signal frequency in kHz
fc_initial=800; //carrier frequency in kHz

disp("The outputs of the balanced modulator for these parameters");
disp("are same as the inputs");
disp("They remain unaltered");

//at the output of the multiplier

m=12;// multiplication factor

final_Freq_Dev=initial_Freq_Dev*m;
B_final=0.5*m;
fm_final=10; //modulating signal remains unaltered
fc_final=800*m;

disp("At the output of the Multiplier,");
disp(fc_final,"Fc(in kHz)=",fm_final,"Fm(in kHz)=",B_final,"B=");
disp(final_Freq_Dev," Frequency Deviation(in kHz)=");
