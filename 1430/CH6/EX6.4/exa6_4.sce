// Example 6.4
// Parallel Network with an AC Current source
// Let us assume that voltage phasor is being represent by V, Its magnitude by 
// V_m and its phase by 'phase' variable.
I=complex(3,0);// Current source phasor
R=5; //Ohms
C=25*10^-6;// Farads
omega=4000; // (rad/s)
Z_r=5;
Z_c=1/(%i*omega*C);
Z_par=(Z_r*Z_c)/(Z_r+Z_c);
V=I*Z_par; // Voltage phasor in rectangular form
V_m=abs(V);
phase=(atan(imag(V),real(V))*180)/%pi;
disp(V,"Voltage phasor in rectangular form(Volts)=")
disp("Voltage phasor in polar form")
disp(V_m,"Magnitude=")
disp(phase,"Phase (in degree)=")
