// Example 6.3
// Parallel Network with an AC Voltage Source
v_m=30; // Magnitude of voltage phasor
omega=4000; // radian frequency
phase_v=20; // Phase angle in degree
Z_r= 5; // Impedance of Resistance
C= 25*10^-6; // Capacitance
Z_c= 1/(%i*omega*C);// Impedance of Capacitance
i_r=v_m/Z_r; // Ohm's Law in Phasor form
i_c=v_m/abs(Z_c); // Ohm's Law in Phasor form
phase_r= phase_v;
phase_c=phase_v-(-90);
x_r=i_r*cos((%pi/180)*phase_r);
y_r=i_r*sin((%pi/180)*phase_r);
I_r=complex(x_r,y_r);
x_c=i_c*cos((%pi/180)*phase_c);
y_c=i_c*sin((%pi/180)*phase_c);
I_c=complex(x_c,y_c);
I=I_r+I_c;
disp(I,"Resultant Steady-state input current in rectangular form(Amps)=")
