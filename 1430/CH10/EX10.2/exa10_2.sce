// Example 10.2
// Calculations with Complex Frequency
L=1;
R=5;
C=1/10;
omega=4;
V=complex(0,20);// Voltage phasor
s=complex(-2,4);// complex frequency
//from s-domain diagram , figure 10.2(b)
Z=s*L+R/(s*C*R+1); // Terminal impedance
Y=1/Z; // Terminal Admittance
I=Y*V; // Current phasor
I_m=abs(I);
phase_I=atan(imag(I),real(I)); // in radian
t=0:0.1:10
i=I_m*exp(real(s)*t).*cos(omega*t-phase_I)
disp(I,"Current Phasor(Amps)=")
plot(t,i)
xlabel('t')
ylabel('i(t)')
title("Current Waveform")
