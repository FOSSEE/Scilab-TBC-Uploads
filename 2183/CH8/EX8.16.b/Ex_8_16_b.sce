// Example 8.16.b //SNR improvement and bandwidth
clc;
clear;
close;
fd=400;//KHz
ba=4;//kHz
df1=fd/ba;//
snri=(1.76+20*log10(df1));//dB
disp(snri,"SNR improvement in dB is")
bm=2*ba*(df1+1);//kHz
disp(bm,"bandwidth in kHz is")
