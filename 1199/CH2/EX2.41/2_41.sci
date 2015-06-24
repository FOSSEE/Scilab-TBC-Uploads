// 2.41
clc;
fo1=100*10^3;
d1=4;
d2=3.7;
fo2=[(d2/d1)^0.5]*fo1;
dfo=fo1-fo2/10^-3;
printf("change in frequency of the oscillator=%.1f kHz",dfo)
