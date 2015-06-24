//8.9
clc;
f=10*10^3;
Vp=6
Initial_slope_of_sine_wa=2*%pi*f*Vp*10^-6;
printf("Initial slope of sine wave= %.5f V/us", Initial_slope_of_sine_wa)
disp('Since slew rate of the amplifier is 0.4V/us, there is no slew rate distortion')
