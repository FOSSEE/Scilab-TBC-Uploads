// Exa 7.8
format('v',7);clc;clear;close;
// Given data
n = 10;// number of cycle
fs = 1;//signal frequency in kHz
fs = fs * 10^3;// in Hz
Timeperiod = n/fs;//time period in sec
Samplingfrequency = 1/Timeperiod;//Sampling frequency in samples/sec
disp(Samplingfrequency,"The sampling rate for 1 kHz in samples/sec is");
fs = 10;// in kHz
fs = fs * 10^3;// in Hz
Samplingperiod = n/fs;//Sampling period in sec
Samplingfrequency = 1/Samplingperiod;//sampling rate for 10 kHz in samples/sec
disp(Samplingfrequency,"The sampling rate for 10 kHz in samples/sec is");
