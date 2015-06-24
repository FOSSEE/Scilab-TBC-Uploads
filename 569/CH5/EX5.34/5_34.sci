// Calculate the change in frequency of the oscillator
clc;
fo1=100*10^3;
d1=4;
d2=3.7;
fo2=[(d2/d1)^0.5]*fo1;
dfo=fo1-fo2;
disp(dfo,'change in frequency of the oscillator (Hz)')