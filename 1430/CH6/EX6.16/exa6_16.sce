// Example 6.16
// Parallel Resonance Calculations
omega_0=5000; // Parallel resonant frequency
L=10^-2; // Henry
R_w=2.5;// Ohms
R=250;// Ohms
C=1/(omega_0^2*L);
R_par=L/(C*R_w);
// from figure 6.39(b)
R_eq= (R*R_par)/(R+R_par);
I=complex(40*10^-3,0);
V=R_eq*I;
I_1=V/R_par;
Q_par=R_eq/(omega_0*L);
I_C=%i*Q_par*I;
I_2=I_1-I_C;
disp(V,"Voltage phasor in rectangular form(Volts)=")
disp(I_1,"Source current phasor in rectangular form(Amps)=")
disp(I_C,"Current phasor(through Capacitor)in rectangular form(Amps)=")
disp(I_2,"Current phasor(through inductor)in rectangular form(Amps)=")

