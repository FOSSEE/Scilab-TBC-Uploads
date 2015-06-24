clear;
clc;
disp("--------------Example 3.29---------------")
dBm=-30; // dBm = 10*log10 (Pm)
Pm = 10^(dBm/10); // power in milliwatts
printf("The power of the signal in milliwatts is %2.1E mW.",Pm); // display result
