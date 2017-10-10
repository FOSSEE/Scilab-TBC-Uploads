//Example 9.9
// Natural response of a Phase-Shift Oscillator
// Continued from textbook example 9.7
C=2*10^-6;
R=100;
L=10*10^-3;
K=poly(0,'K'); // Variable gain K
alpha=(R/(2*L))*(L/(R^2*C)+1-K);
omega_0=sqrt(2/(L*C));
K=roots(alpha);
alpha=horner(alpha,K)
// Since this is the case of underdamped response
//Assume value for A_1 for illustration
A1=complex(0,1.974)
A1_m=abs(A1);
phase_A1=atan(imag(A1),real(A1));
t=0:0.01:1
t1=0:0.0001:0.02
v_out1=2*A1_m*cos(omega_0*t+phase_A1) // Underdamped response case1
K1=1; // New value of gain
alpha1=(R/(2*L))*(L/(R^2*C)+1-K1);
omega_d1=sqrt(omega_0^2-alpha1^2);
v_out2=2*A1_m*%e^(-alpha1*t1).*cos(omega_d1*t1+phase_A1);
K2=2;
alpha2=(R/(2*L))*(L/(R^2*C)+1-K2);
omega_d2=sqrt(omega_0^2-alpha2^2)
v_out3=2*A1_m*%e^(-alpha2*t1).*cos(omega_d2*t1+phase_A1)
subplot(3,1,1)
plot(t,v_out1)
xlabel('t')
ylabel('v_out1(t)')
title('Underdamped case 1')
subplot(3,1,2)
plot(t1,v_out2)
xlabel('t')
ylabel('v_out1(t)')
title('Underdamped case 2')
subplot(3,1,3)
plot(t1,v_out3)
xlabel('t')
ylabel('v_out1(t)')
title('Underdamped case 3')
