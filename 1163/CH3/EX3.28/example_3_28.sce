clear;
clc;
disp("--------------Example 3.28---------------")
dB1=-3; // signal is attenuated
dB2=7;  // signal is amplified
dB3=-3; // signal is attenuated
dB=dB1+dB2+dB3; // add to get final dB 
printf("The final decibel value is +%d dB . Hence the signal has gained in power.",dB); //display result
