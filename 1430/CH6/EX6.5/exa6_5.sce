// Example 6.5
// Capacitor Calculation
C=25*10^-6;// Farad
omega= 4000;// Radian frequency (rad/s)
V_m=30;// Magnitude of voltage phasor
phase_v=20; // Phase of the voltage source
Z_c=1/(%i*omega*C);// Impedance of the capacitor
Y_c=1/Z_c; // Admittance of the capacitor
I_m=abs(Y_c)*V_m; // Ohm's Law,Magnitude of current phasor
phase_c=atan(imag(Y_c),real(Y_c))*(180/%pi);
phase_i=phase_c+phase_v;
x_i=I_m*cos((%pi*phase_i)/180);// X-component of current phasor
y_i=I_m*sin((%pi*phase_i)/180);//Y-component of current phasor
I_c=complex(x_i,y_i); // Rectangular form of current through capacitor
disp(I_c,"Current phasor in Rectangular form(Amps)=")
disp("Current phasor in Polar form")
disp(I_m,"Magnitude=")
disp(phase_i,"Phase(in degree)=")
