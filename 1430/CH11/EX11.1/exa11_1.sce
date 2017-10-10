// Example 11.1
// A Frequency-Selective Network
// v_in(t)=10*cos(20*t)+10*cos(300*t)
R=8;
L=0.2;
s=%s; 
H_s= R/(s*L+R); // H(s)=V_out/V_in , applying KVL in figure 11.1 
// Selecting input frequency to 
omega1= 20;
H_omega1= horner(H_s,%i*omega1);
a_omega1=abs(H_omega1);// amplitude ratio 
theta1_r=atan(imag(H_omega1),real(H_omega1)); // Phase shift in radian
theta1_d=atan(imag(H_omega1),real(H_omega1))*(180/%pi); // Phase shift in degree
// Selecting input frequency to
omega2=300;
H_omega2= horner(H_s,%i*omega2);
a_omega2=abs(H_omega2);// amplitude ratio 
theta2_d=atan(imag(H_omega2),real(H_omega2))*(180/%pi);// Phase shift in degree
theta2_r=atan(imag(H_omega2),real(H_omega2));// Phase shift in radians
t=0:0.001:5
v_out=a_omega1*10*cos(omega1*t+theta1_r)+a_omega2*10*cos(omega2*t+theta2_r)
plot(t,v_out);
xlabel('t');
ylabel('v_out(t)')
title('Steady State Output Voltage Waveform')
