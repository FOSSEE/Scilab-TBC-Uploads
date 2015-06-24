// 4.11
clc;
disp('for good quality data the sampling rate should be at least 5 times the data frequency for one channel')
channel=5;
f=50;
sampling_rate=5*channel*f;
printf("\nsampling rate =%.1f samples per second",sampling_rate)
