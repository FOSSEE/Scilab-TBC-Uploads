// Example 11.3
// Frequency-Response Calcuations
s=%s;
num=20*(s+25)
den=s^2+20*s+500;
omega=[0:1:1000]; // diffrent value of frequency for frequency respose plot
H_s=num/den; // Given transfer function
H_omega=horner(H_s,%i*omega);
a_omega=abs(H_omega);
theta=atan(imag(H_omega),real(H_omega))*(180/%pi);
subplot(2,1,1)
plot(omega,a_omega,'-g')
xlabel('omega')
ylabel('a_omega')
title('Frequency-response curve')
subplot(2,1,2)
plot(omega,theta,'-r')
xlabel('omega')
ylabel('theta')
