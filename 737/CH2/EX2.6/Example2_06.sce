//Example 2.6 page 29
//Given the DSP system shown in Figure 2.16, where a sampling rate of
//40,000 Hz is used, the anti-aliasing filter is a Butterworth lowpass filter
//with a cutoff frequency of 8 kHz, and the percentage of aliasing level at the
//cutoff frequency is required to be less than 1%, determine the order of
//the anti-aliasing lowpass filter.

clc,clear,close;
fs=40000,fc = 8000,fa=8000;//Hz 
aliasing_noise = 100;
n = 0;
while(aliasing_noise > 1)
    n = n+1;
    aliasing_noise = (1+(fa/fc)^(2*n))^(.5) / (1+((fs-fa)/fc)^(2*n))^(.5) * 100;
    disp("n = "+string(n)+", Aliasing Noise Level = "+string(aliasing_noise)+"%" )
end

disp("To satisfy 1% aliasing noise level, we choose n = " +string(n));