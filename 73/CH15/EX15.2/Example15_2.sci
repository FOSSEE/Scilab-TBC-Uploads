//Chapter 15_Phase Locked Loops
//Caption : Output Signal Frequency
//Example 15.2: A PLL has a Ko of 2*%pi(1kHz)/V, a Kv of 500 per sec, and a free running frequency of 500Hz.
//a) For a constant input signal frequency of 250 Hz and 1kHz.find vf.
clear;
clc;
//a)Solution:
Ko=2*%pi*10^3;// VCO gain in kHz/V
Kv=500;//loop bandwith in per second
Wc=500;//Free running frequency of VCO in PLL or 2*%pi*500
//Wi=angular input signal  frequency in Hz
//Wo=angular output signal frequency in Hz
//since vf=(Wo(t)-Wc)/Ko
//under locked condition Wo=Wi, so vf=(Wo-Wc)/Ko
for i=1:2,
    if i==1 then 
        Wo=250;
        //or 
        Fo=2*%pi*Wo;//in Hz
vf=(Fo-2*%pi*500)/Ko;
disp('********For input signal frequency W=250 Hz********')
disp('V',vf,'output signal voltage of PLL for  Wo=250 Hz is:')
else
    Wo=1000;
    Fo=2*%pi*Wo;//in Hz
    vf=(Fo-2*%pi*500)/Ko;
    disp('********For input signal frequency Wo=1 kHz********')
    disp('V',vf,'output signal voltage of PLL for  Wo=1kHz is:')
end
end