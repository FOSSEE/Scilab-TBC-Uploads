clc;
clear;
Max_Freq_Dev=12; //Maximum Frequency Deviation in kHZ
fm=6; //Modulating frquency in kHz

B=Max_Freq_Dev/fm;// Modulation index

J=6;//From Bessel Table, for B=2

Bw=2*J*6*10^(3);
BW_carson=2*(fm + Max_Freq_Dev)*10^(3);

disp(Bw," Minimum Bandwidth (in Hz) is");
disp(BW_carson," Approximate Minimum Bandwidth according to carson rule( in Hz) is");
