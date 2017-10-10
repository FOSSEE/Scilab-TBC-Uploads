// Example 6.6
// Impedance Analysis of a parallel RC Circuit
// From figure 6.17
R=5; // Ohms
C=25*10^-6; // Farad
omega=4000; // radian frequency
V_m=30; // Magnitude of voltage phasor
phase_v=20; // In degree
Z_r=5; // Impedance of Resistor
Z_c=1/(%i*omega*C);
Z_par=(Z_r*Z_c)/(Z_r+Z_c);
Y_par=1/Z_par; // Equivalent Admittance
x_v=V_m*cos((%pi*phase_v)/180);
y_v=V_m*sin((%pi*phase_v)/180);
V=complex(x_v,y_v);
I=V*Y_par;// Current phasor in rectangular form
I_m=abs(I); // Current phasor magnitude
phase_i=atan(imag(I),real(I))*(180/%pi); // Phase angle of current phasor
disp(I,"Current phasor in rectangular form(Amps)=")
disp("In polar form=")
disp(I_m,"Magnitude=")
disp(phase_i,"Phase angle(in degree)=")
