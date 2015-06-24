clc;
clear;
Wm=18850;//Angular Frequency of message signal
fm=Wm/(2*%pi);
a=3;// amplitude of message signal

Dev_sen=6;//Deviation Sensitivity in kHz/V
Max_Freq_Dev=a*Dev_sen*10^(3);

B=Max_Freq_Dev/(fm);

disp(Max_Freq_Dev,"Maximum Frequency Deviation(in Hz)");
disp(B,"Modulation Index");
