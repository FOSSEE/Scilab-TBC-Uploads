clc
//ex5.5
V_s_max=10;      //peak value of source voltage
phi=-%pi/2;      //phase of source voltage
V_s=complex(10*cos(%pi/2),10*sin(%pi/2));      //phasor of source voltage
W=1000;      //angular frequency
R=100;
L=0.1;
C=10*10^-6;
Z_L=%i*W*L;      //impedance of inductance
Z_C=-%i/(W*C);      //impedance of capacitance
Z_RC=1/((1/R)+(1/Z_C));      //R and Z_C in parallel combination
V_C=V_s*Z_RC/(Z_L+Z_RC);      //voltage division principle
I=V_s/(Z_L+Z_RC);      //current through source and inductor
I_R=V_C/R;      //current through resistance
I_C=V_C/Z_C;      //current through capacitor
//cos(t)=cos(180-t)
disp(sqrt((real(V_C)^2)+(imag(V_C)^2)),'peak value of Vc in volts')
disp((atan(imag(V_C)/real(V_C)))*180/%pi,'phase angle of Vc in degrees')
////result : V_C=Vcos(wt+phi)  V-peak voltage
disp(I,'current through source and inductor in amperes')
disp(I_R,'current through resistance in amperes')
disp(I_C,'current through capacitance in amperes')
disp('phasor diagram cannot be plotted')
