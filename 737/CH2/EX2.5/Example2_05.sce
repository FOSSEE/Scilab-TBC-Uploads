//Example 2.5 page 28
//Given the DSP system shown in Figures 2.16 to 2.18, where a sampling
//rate of 16,000 Hz is used and the anti-aliasing filter is a second-order
//Butterworth lowpass filter with a cutoff frequency of 3.4 kHz, determine
//the percentage of aliasing level at the cutoff frequency.
clc,clear,close;
fs=16000,fc = 3400;//Hz 
n =2;

fa = 3400;//Hz, aliasing frequency
aliasing_noise = (1+(fa/fc)^(2*n))^(.5) / (1+((fs-fa)/fc)^(2*n))^(.5) * 100;
disp("Aliasing Noise Level = "+string(aliasing_noise)+"%" )