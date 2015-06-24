clc
//ex5.4
L=0.3;
C=40*10^-6;
R=100;
V_s_max=100;      //peak value of given voltage
W=500;      //angular frequency
V_s_phi=%pi/6;      //phase angle in degrees
V_s=complex(V_s_max*cos(V_s_phi),V_s_max*sin(V_s_phi));      //phasor for voltage source
Z_L=%i*W*L;      //complex impedance of inductance
Z_C=-%i/(W*C);      //complex impedance of capacitance
Z_eq=R+Z_L+Z_C;      //R,Z_L and Z_C in series
I=V_s/Z_eq;      //phasor current
V_R=R*I;
V_L=Z_L*I;
V_C=Z_C*I;
printf(" All the values in the textbook are approximated hence the values in this code differ from those of Textbook")
//for resistance R
disp('For resistance R')
V_R_max=sqrt((real(V_R)^2)+(imag(V_R)^2));
V_R_phi=(atan(imag(V_R)/real(V_R)))*180/%pi;
disp(V_R_max,'peak value of voltage in volts')
disp(V_R_phi,'phase angle in degrees')
//result : V_R=Vcos(wt+phi)  V-peak voltage
//for inductance L
disp('For inductance L')
V_L_max=sqrt((real(V_L)^2)+(imag(V_L)^2));
V_L_phi=(atan(imag(V_L)/real(V_L)))*180/%pi;
disp(V_L_max,'peak value of voltage in volts')
disp(V_L_phi,'phase angle in degrees')
//result : V_L=Vcos(wt+phi)  V-peak voltage
//for capacitor C
disp('For capacitor C')
V_C_max=sqrt((real(V_C)^2)+(imag(V_C)^2));
V_C_phi=(atan(imag(V_C)/real(V_C)))*180/%pi;
disp(V_C_max,'peak value of voltage in volts')
disp(V_C_phi,'phase angle in degrees')      //cos(t)=cos(t-180)  (we get 75 instead of -105 given in textbook)
//result : V_C=Vcos(wt+phi)  V-peak voltage
disp('The phasor diagram cannot be plotted')
