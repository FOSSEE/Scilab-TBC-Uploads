clc;
//page no 5-11
//Example 5.4
//Given amplitude of the wave as 5V and frequency as 1kHz
amp=5;
fs=50;//frequency sensitivity
fd=amp*fs;//frequency deviation
disp(+'Hz',fd,'Frequency Deviation=');
fm=1*10^3;//in Hz
mod=fd/fm;
disp(mod,'Modulation index=');

