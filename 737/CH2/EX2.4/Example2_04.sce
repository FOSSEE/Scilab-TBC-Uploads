//Example 2.4 page 27
//Given the DSP system shown in Figures 2.16 to 2.18, where a sampling rate of 8,000 Hz is used and the anti-aliasing filter is a second-order Butterworth lowpass filter with a cutoff frequency of 3.4 kHz,
//a. Determine the percentage of aliasing level at the cutoff frequency.
//b. Determine the percentage of aliasing level at the frequency of 1,000 Hz.

clc,clear,close;
fs=8000,fc = 3400;//Hz 
n =2;

//part a
fa = 3400;//Hz, aliasing frequency
aliasing_noise = (1+(fa/fc)^(2*n))^(.5) / (1+((fs-fa)/fc)^(2*n))^(.5) * 100;
disp("(a) Aliasing Noise Level = "+string(aliasing_noise)+"%" )

//part b
fa = 1000;//Hz, aliasing frequency
aliasing_noise = (1+(fa/fc)^(2*n))^(.5) / (1+((fa-fs)/fc)^(2*n))^(.5) * 100;
disp("(b) Aliasing Noise Level = "+string(aliasing_noise)+"%" )

