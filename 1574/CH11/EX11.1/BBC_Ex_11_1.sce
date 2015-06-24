clc
//Chapter11
//Example11.1, page no 435
//Given
//a
c=20// no of signal channels
s=8e3// Channel sampling rate
t=1/s// time interval over which ll channels are sampled once
//b
g=5e-6// guaed time for each channel sample
s_duration=t-g// duration of each sample
//c
samples_sec=c*s//
mprintf('The total no of samples per second is:\n %d samples/second',samples_sec)
