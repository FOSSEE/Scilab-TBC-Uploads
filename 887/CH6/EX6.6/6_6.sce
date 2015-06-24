clc
//ex6.6
R=10*10^3;
f_o=1*10^6;
B=100*10^3;
I=10^-3*complex(cos(0),sin(0));
Q_p=f_o/B;      //quality factor
L=R/(2*%pi*f_o*Q_p);
C=Q_p/(2*%pi*f_o*R);
//At resonance
V_out=I*R;
Z_L=%i*2*%pi*f_o*L;
Z_C=-%i/(2*%pi*f_o*C);

//across resistance
I_R=V_out/R;
I_R_R=real(I_R);      //real part
I_R_I=imag(I_R);      //imaginary part
I_R_max=sqrt((I_R_R^2)+(I_R_I^2));      //peak value
I_R_phi=atan(I_R_I/I_R_R);      //phase angle

//across inductance
I_L=V_out/Z_L;
I_L_R=real(I_L);      //real part
I_L_I=imag(I_L);      //imaginary part
I_L_max=sqrt((I_L_R^2)+(I_L_I^2));      //peak value
//Z_L is pure imaginary ==> V_L is pure imaginary which means V_L_phi can be +or- %pi/2
if ((I_L/%i)==abs(I_L)) then
    I_L_phi=%pi/2
elseif ((I_L/%i)==-abs(I_L)) then
    I_L_phi=-%pi/2
end

//across capacitor
I_C=V_out/Z_C;
I_C_R=real(I_C);      //real part
I_C_I=imag(I_C);      //imaginary part
I_C_max=sqrt((I_C_R^2)+(I_C_I^2));      //peak value
//Z_C is pure imaginary ==> V_C is pure imaginary which means V_C_phi can be +or- %pi/2
if ((I_C/%i)==abs(I_C)) then
    I_C_phi=%pi/2
elseif ((I_C/%i)==-abs(I_C)) then
    I_C_phi=-%pi/2
end

disp('Current phasor across Resistance')
disp(I_R_max,'peak value in amperes')
disp(I_R_phi*180/%pi,'phase angle in degrees')
disp('')
disp('Current phasor across Inductance')
disp(I_L_max,'peak value in amperes')
disp(I_L_phi*180/%pi,'phase angle in degrees')
disp('')
disp('current phasor across capacitance')
disp(I_C_max,'peak value in amperes')
disp(I_C_phi*180/%pi,'phase angle in degrees')
disp('Phasor diagram cannot be drawn here')
