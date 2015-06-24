//scilab 5.4.1
//Windows 7 operating system
//chapter 12 Modulation and Demodulation
clc
clear
fc=1000*(10^3)//fc=frequency of the carrier wave in Hz(hertz)
fmin=400
fmax=1600//fmin and fmax represent the frequency range of audio signals by which the carrier wave is amplitude modulated.
fs=fmax-fmin//fs=frequency span of each sideband
disp("Hz",fs,"1.Frequency span of each sideband is ")
fumax=(fc+fmax)/1000//fumax=maximum upper side frequency
disp("kHz",fumax,"2.The maximum upper side frequency is ")
flmin=(fc-fmax)/1000//flmin=minimum lower side frequency
disp("kHz",flmin,"3.The minimum lower side frequency is ")
Wc=fumax-flmin//Wc=channelwidth
disp("kHz",Wc,"4.The channelwidth is ")
