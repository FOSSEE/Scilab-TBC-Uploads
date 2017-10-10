// Example 9.5
// Transients in an AM Radio signal
// From figure 9.16(a)
omega=15;
L=1;
R=26;
Z_L=%i*omega*L
V_s1=complex(6,0); // Voltage source phasor t<0
V_s2=complex(12,0); // Voltage source phasor t>0
I=V_s1/(R+Z_L); // Current phasor for t<0
V=Z_L*I; // Voltage phasor for t<0
I_m=abs(I); // current phasor magnitude
phase_I= atan(imag(I),real(I))*(180/%pi);
V_m=abs(V);
phase_V=atan(imag(V),real(V))*(180/%pi);
// since current has continuity
I_0=I_m*cos(atan(imag(I),real(I)));
// the initial value of v(t)
V_0=V_s2-R*I_0; // KVL 
// Phasor analysis for t>0
I_F=I*2;
V_F=V*2;
tau=L/R; // time constant
I_F_0=abs(I_F)*cos(atan(imag(I_F),real(I_F))); // initial condition
V_F_0=abs(V_F)*cos(atan(imag(V_F),real(V_F))); // initial condition
A_I= I_0-I_F_0;
A_V=V_0-V_F_0;
t=0:0.01:10;
i=abs(I_F)*cos(omega*t+atan(imag(I),real(I)))+A_I*exp(-t/tau);
v=abs(V_F)*cos(omega*t+atan(imag(V),real(V)))+A_V*exp(-t/tau);
subplot(2,1,1)
plot(t,i,'-g')
xlabel('t')
ylabel('i(t)')
title('Current waveform')
subplot(2,1,2)
plot(t,v,'-r')
xlabel('t')
ylabel('v(t)')
title('Voltage waveform')
