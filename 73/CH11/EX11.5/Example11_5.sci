//Chapter 11_Nonlinear Circuit Application
//Caption : Rise Time
//Example11.5: The upper 3-dB frequency of an Op-Amp is 1MHz.Calculate the rise time of the output. If the upper 3-dB frequency of the Op-Amp is increased to 50 MHz by reducing the gain such that gain bandwidth product remains constant,then find out the new rise time.Discuss the effect of increasing bandwidth on accuracy of comparator.
//Solution:
clear;
clc;
F3dB=1*10^6;//upper 3-dB frequency of Op-Amp
Tr=0.35/F3dB;//from definition of rise time
disp('n sec',Tr*10^9,'Rise time of the output is:')
F3dB1=50*10^6;
Tr1=0.35/F3dB1;
disp('n sec',Tr1*10^9,'Rise time of the output is:')