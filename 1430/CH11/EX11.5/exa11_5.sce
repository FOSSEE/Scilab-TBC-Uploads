// Example 11.5
// Design of a Lowpass Filter
f_co=4000; // In Hertz
R_L=200;
R_s=50;
// Using node equation in figure 11.10
// (1/R_s+1/R_L+s*C)*V_out=(1/R_s)*V_s;
// V_out/V_s=H(s)=(K*omega_co)/(s+omega_co)---equation (1)
// Comparing equation (1) with low pass filter equation we get,
K=(1/R_s)/(1/R_s+1/R_L);
omega_co=2*%pi*f_co;
C=1/(omega_co*(1/R_s+1/R_L));
R_eq=(R_s*R_L)/(R_s+R_L);
tau=R_eq*C;
// design testing
// Model for voice signal is 3kHz sinusoid with V_m=5V
// so total input signal will become
// v_s(t)=5*cos(omega1*t)+0.5*cos(omega2*t)
omega1=2*%pi*3000;
omega2=2*%pi*16000;
// using equation for Low pass filter we get
H_omega1=(K*omega_co)/(%i*omega1+omega_co);
H_omega2=(K*omega_co)/(%i*omega2+omega_co);
a_omega1=abs(H_omega1);
theta1_r=atan(imag(H_omega1),real(H_omega1));
a_omega2=abs(H_omega2);
theta2_r=atan(imag(H_omega2),real(H_omega2));
t=0:0.0001:0.01;
v_out=a_omega1*5*cos(omega1*t+theta1_r)+a_omega2*0.5*cos(omega2*t+theta2_r);
v_s=5*cos(omega1*t)+0.5*cos(omega2*t)
plot(t,v_out,t,v_s,'-g')
xlabel('t')
ylabel('v_out(t)')
title('Voltage Waveform')
h1=legend(['v_out';'v_s'])
disp("waveform Shows that whistle amplitude has been cut down to 3% of the voice signal at the input")
