// Example 13.12
// Calculating a Zero-Input Response
L=2;
R=20;
C=1/200;
s=%s;
// for t<0
i_L_bef=6;
v_C_bef=20*i_L_bef;
// for t>0 ,figure 13.13(b)

//Applying Mesh equation for I_L_s
I_L_s=(12+120/s)/(2*s+20+100/s);
// I_L_s has the form (Bs+C)/(s^2+2*alpha*s+omega_0^2) comparing these equations
// we get
B=6;
C=60;
alpha=5;
omega_o=50
beta=5;
K=complex(6,-6);
K_m=abs(K);
phase_K=atan(imag(K),real(K))
t=0:0.001:5;
i_L=K_m*exp(-alpha*t).*cos(beta*t+phase_K); // t>=0
plot(t,i_L)
xlabel('t')
ylabel('i_L(t)')
title('Current Waveform')
