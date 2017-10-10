// Example 10.1
// A complex-Frequency Waveform
// we want the complex frequency waveform representation of 
// i(t)=200*exp(-5*t).*cos(30*t+60)mA
// Examining the above expression 
I_m=200*10^-3;
sigma=-5;
omega=30;
phase_i=60; // In degree
x_I=I_m*cos(phase_i*(%pi/180));
y_I=I_m*sin(phase_i*(%pi/180));
I=complex(x_I,y_I); // Current Phasor
s=complex(sigma,omega);
disp("Complex-frequency representation")
disp(I,"Current phasor(Amps)=")
disp(s,"Complex-frequency")
