// Example 6.8
// AC Ladder Calculations
I_m=10; // Magnitude of current phasor
phase_i=0; // Phase angle of current phasor
omega=50000; // Radian frequency (rad/s)
L= 200*10^-3;//Henry
C=2*10^-9; // Farad
Z_R1=40000;
Z_R2=5000;
Z_L= %i*omega*L;
Z_C=1/(%i*omega*C);
Z_eq1=(Z_R2*Z_C)/(Z_R2+Z_C);
Z_eq2= Z_L+Z_eq1;
Z_eq=(Z_R1*Z_eq2)/(Z_R1+Z_eq2);
I=complex(I_m,0); // current phasor in Rectangular form
V=Z_eq*I;// Voltage phasor
V_L=(Z_L*V)/(Z_L+Z_eq1);// Voltage phasor across inductor
V_C=(Z_eq1*V)/(Z_L+Z_eq1);// Voltage phasor across capacitor
V_m=abs(V);
phase_v=atan(imag(V),real(V))*(180/%pi);
V_L_m=abs(V_L);
phase_v_l=atan(imag(V_L),real(V_L))*(180/%pi);
V_C_m=abs(V_C);
phase_v_c=atan(imag(V_C),real(V_C))*(180/%pi);
t=0:0.5:10;
v=V_m*cos(omega*t+atan(imag(V),real(V)));
v_l=V_L_m*cos(omega*t+atan(imag(V_L),real(V_L)));
v_c=V_C_m*cos(omega*t+atan(imag(V_C),real(V_C)));
plot(t,v,'-r',t,v_l,'-g',t,v_c,'b')
xlabel('t')
ylabel('v')
title('Voltage Waveform')
h1=legend(['v(t)';'v_l(t)';'v_c(t)']);
disp(V,"Voltage Phasor in rectangular form(Volts)=")
disp(V_L,"Voltage Phasor across inductor in rectangular form(Volts)=")
disp(V_C,"Voltage Phasor across capacitor in rectangular form(Volts)=")
