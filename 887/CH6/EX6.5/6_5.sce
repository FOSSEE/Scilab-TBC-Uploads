clc
//ex6.5
V_s=1*complex(cos(0),sin(0));
L=159.2*10^-3;
R=100;
C=0.1592*10^-6;
f_o=1/(2*%pi*sqrt(L*C));      //resonant frequency
Q_s=2*%pi*f_o*L/R;      //quality factor
B=f_o/Q_s;      //Bandwidth
//Approximate half-power frequencies are
f_H=f_o+(B/2);
f_L=f_o-(B/2);
//At resonance
Z_L=%i*2*%pi*f_o*L;      //impedance of inductance
Z_C=-%i/(2*%pi*f_o*C);      //impedance of capacitance
Z_s=R+Z_L+Z_C;
I=V_s/Z_s;      //phasor current
//voltages across diffrent elements are
//for resistance
V_R=R*I;
V_R_R=real(V_R);      //real part
V_R_I=imag(V_R);      //imaginary part
V_R_max=sqrt((V_R_R^2)+(V_R_I^2));      //peak value
V_R_phi=atan(V_R_I/V_R_R);      //phase angle
//for inductance
V_L=Z_L*I;
V_L_R=real(V_L);      //real part
V_L_I=imag(V_L);      //imaginary part
V_L_max=sqrt((V_L_R^2)+(V_L_I^2));      //peak value
//Z_L is pure imaginary ==> V_L is pure imaginary which means V_L_phi can be +or- %pi/2
if ((V_L/%i)==abs(V_L)) then
    V_L_phi=%pi/2
elseif ((V_L/%i)==-abs(V_L)) then
    V_L_phi=-%pi/2
end

//for capacitance
V_C=Z_C*I;
V_C_R=real(V_C);      //real part
V_C_I=imag(V_C);      //imaginary part
V_C_max=sqrt((V_C_R^2)+(V_C_I^2));      //peak value
//Z_C is pure imaginary ==> V_C is pure imaginary which means V_C_phi can be +or- %pi/2
if ((V_C/%i)==abs(V_C)) then
    V_C_phi=%pi/2
elseif ((V_C/%i)==-abs(V_C)) then
    V_C_phi=-%pi/2
end
 
disp('Phasor voltage across Resistance')
disp(V_R_max,'peak value in volts')
disp(V_R_phi*180/%pi,'phase angle in degrees')
disp('')
disp('Phasor voltage across Inductance')
disp(V_L_max,'peak value in volts')
disp(V_L_phi*180/%pi,'phase angle in degrees')
disp('')
disp('Phasor voltage across Capacitance')
disp(V_C_max,'peak value in volts')
disp(V_C_phi*180/%pi,'phase angle in degrees')
disp('Phasor diagram cannot be drawn here')
