//8.10
clc;
f=10*10^3;
Vp=10;
Initial_slope_of_sine_wa=2*%pi*f*Vp*10^-6;
printf("Initial slope of sine wave= %.3f V/us", Initial_slope_of_sine_wa)
disp('Since slew rate of the amplifier is 0.5V/us, so slew rate distortion will occur')
Sr=0.5*10^6;
Vp=Sr/(2*%pi*f);
printf("Amplitude of the input signal=%.2f V",Vp)
