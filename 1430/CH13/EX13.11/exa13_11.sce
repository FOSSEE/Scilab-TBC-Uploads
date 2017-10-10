// Example 13.11
// Zero-State AC Response
t=0:0.01:10
s=%s;
H_s=(s+8)/(s+4)^2;// Network transfer function
V_s=(50*s)/(s^2+64); // Laplace transform of voltage source
I_s=H_s*V_s;
pfe=pfss(I_s);
I_N_s=pfe(2); // Natural response in s-domain
// Taking inverse laplace transform of pfe(2) we get,
i_N=-exp(-4*t)-10*t.*exp(-4*t);

// For Forced response component 
V_S=complex(50,0); // Voltage source phasor
H=horner(H_s,%i*8);
I=H*V_S;
I_m=abs(I);
phase_I=atan(imag(I),real(I));
i_F=I_m*cos(8*t+phase_I);
i=i_N+i_F;
plot(t,i);
xlabel('t')
ylabel('i(t)')
title('Zero-state ac Response Waveform')
