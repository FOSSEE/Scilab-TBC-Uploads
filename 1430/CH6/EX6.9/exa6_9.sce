// Example 6.9
// AC Network With a Controlled Source
// Form figure 6.22(b)
V_m=20; // Voltage phasor magnitude
phase_v=0; // voltage phasor phase
omega=1000; // Radian frequency (rad/s)
Z_R1=6;
Z_R2=12;
C=250*10^-6; // Farad
L=8*10^-3; // Henry
Z_C=1/(%i*omega*C);
Z_L=%i*omega*L;
// Using Proportionality Method
I_2=complex(1,0); // Assumption
V_x=Z_L*I_2; // Ohm's law in phasor form
V_1=(Z_L+Z_R2)*I_2; // Ohm's law in phasor form
I_1=V_1/Z_C;
I_assumed=I_1+I_2; // KCL 
V_assumed=Z_R1*I_assumed-3*V_x+V_1
// Hence input impedance
Z=V_assumed/I_assumed;
V=complex(V_m,0); // Actual Voltage phasor
I=V/Z;
I_1_actual=(I_1/I_assumed)*I;
I_1_actual_m=abs(I_1_actual);
phase_i_1_actual=atan(imag(I_1_actual),real(I_1_actual)); // Phase in radian
t=0:0.1:10;
plot(t,I_1_actual_m*cos(omega*t+phase_i_1_actual))
xlabel("t")
ylabel("i_1(t)")
title('Current Waveform')
disp(I_1_actual,"Current phasor in rectangular form(Amps)=")
