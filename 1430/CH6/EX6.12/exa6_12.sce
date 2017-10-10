//Example 6.12
// systematic AC Mesh Analysis
V_m=30;// Voltage Phasor magnitude
phase_v=60;
I_m=1; // current Phasor magnitude
phase_i=0;
Z_R=10;
omega=10; // Radian frequency (rad/s)
L=2; // Henry
C=0.01;//Farad
Z_L=%i*omega*L;
Z_C=1/(%i*omega*C);
Z=(Z_R*Z_L)/(Z_R+Z_L)+Z_C; // Sum of the impedance around the mesh
x_v=V_m*cos((%pi/180)*phase_v);
y_v=V_m*sin((%pi/180)*phase_v);
V=complex(x_v,y_v);// Voltage Phasor in Rectangular form
V_s=V-I_m*Z_C;
I_1= V_s/Z; // Ohm's Law
I_1_m=abs(I_1);
phase_i_1=atan(imag(I_1),real(I_1))*(180/%pi);
disp("Current in Polar form(Amps)")
disp(I_1_m,"Magnitude=")
disp(phase_i_1,"Phase(in Degree)=")
