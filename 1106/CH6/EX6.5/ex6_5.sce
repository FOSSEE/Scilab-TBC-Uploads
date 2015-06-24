// Example 6.5, Page No-276
clear
clc

fh=10*10^3
f=12*10^3

// For third order low pass butterworth filter
t=(f^6/fh^6)
Hif=1/(sqrt(1+t))
Hifdb=20*log(Hif)/log(10)
printf('Hif= %.4f dB', Hifdb)

// For fourth order low pass butterworth filter
t=(f^8/fh^8)
Hif=1/(sqrt(1+t))
Hifdb=20*log(Hif)/log(10)
printf('\nHif= %.2f dB', Hifdb)
