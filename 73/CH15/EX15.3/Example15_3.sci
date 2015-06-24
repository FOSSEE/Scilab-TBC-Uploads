//Chapter 15_Phase Locked Loops
//Caption : VCO and Phase detector
//Example15.3: A PLL has free running frequency Wc=500 kHz,bandwith of low pass filter=10kHz. Suppose an input signal of frequency 600kHz is applied.Will the loop acquire lock? What is VCO output frequency? The phase detector produces sum and difference frequency components.
//Solution:
clear;
clc;
BW=10;//bandwidth of low pass filter in kHz
Fi=600;//input frequency in kHz
Fc=500;//free running frequency in kHz
// Output from phase detector is
Sum=Fi+Fc;
Difference=Fi-Fc;
disp('kHz',Sum,'sum frequency component of phase detector in kHz')
disp('kHz',Difference,'difference frequency component of phase detector in kHz')
if Sum>BW then
    if Difference>BW then
    disp('Both Sum and Difference frequency components are outside the passbandof low-pass filter')
    disp('Loop will not acquire lock')
    disp('VCO frequency will be its free running frequency')
end
end