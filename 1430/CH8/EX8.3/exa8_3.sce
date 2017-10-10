// Example 8.3
// Transformer-coupled Oscillator
// From figure 8.9(a)
V_m=12;//Magnitude of voltage source
omega=50000;// radial frequency (rad/s)
R_s=1000;//
V_s=20;// DC source
Z_C=1/(%i*omega*0.1*10^-6);
R=500;
// from figure 8.9(b)
// referring the ac source to the secondary ,as shown in figure 8.9(b)
N=1/2;
R_s_new=N^2*R_s;
I=complex((N*12)/(N^2*R_s),0);
// using node equations
V_out=I/(1/R+1/Z_C+1/R_s_new);
I_out=(1/Z_C+1/R)*V_out;
I_in1=N*I_out;// Ac component of primary current
I_in2=-V_s/R_s; // DC component of primary current
I_in1_m=abs(I_in1);
phase_I_in1=atan(imag(I_in1),real(I_in1))*(180/%pi);
// by superposition total primary current will be
t=0:0.5:100
I_in=I_in1_m*cos(omega*t+phase_I_in1) + I_in2;
plot(t,I_in)
xlabel('t')
ylabel('i_in(t)')
title('Current Waveform')
