// Example 6.1, Page No-269
clear
clc

fH=10*10^3
f=12*10^3
t=(f^2/fH^2)
Hif=1/(sqrt(1+t))
Hifdb=20*log(Hif)/log(10)
printf('Delta Vi=%.2f dB', Hifdb)

