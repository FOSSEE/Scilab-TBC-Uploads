//ex17.4
P_dev_1=50*746;      //developed power
V_L=480;      //line voltage
PF=0.9;      //power factor
f=60;      //frequency
P=8;      //number of poles
X_s=1.4;      //synchronous reactance
//CASE a
n_s=120*f/P;      //speed of machine in rpm
W_s=n_s*2*%pi/60;      //speed in radians per second
T_dev=P_dev_1/W_s;      //developed torque
printf(" All the values in the textbook are approximated hence the values in this code differ from those of Textbook")
disp('CASE a:')
disp(n_s,'speed in rpm')
disp(T_dev,'developed torque in Nm')
//CASE b
V_a=V_L;      //phase voltage
I_a_max=P_dev_1/(3*V_a*PF);      //phase current
phi=acos(PF);
I_a=I_a_max*complex(cos(phi),sin(phi));
E_r=V_a-%i*X_s*I_a;      //voltage induced by rotor
E_r_max=sqrt((real(E_r)^2)+(imag(E_r)^2));
E_r_phi=atan(imag(E_r)/real(E_r));
TA=-E_r_phi;      //torque angle
disp('CASE b:')
disp('Phase current:')
disp(I_a_max,'peak value in amperes')
disp(phi*180/%pi,'phase angle in degrees')
disp('Voltage induced by rotor:')
disp(E_r_max,'peak value in volts')
disp(E_r_phi*180/%pi,'phase angle in degrees')
disp(TA*180/%pi,'torque angle in degrees')
//CASE c
//excitation constant means the values of I_f, B_r and E_r are constant
P_dev_2=100*746;
sin_t=P_dev_2*sin(TA)/P_dev_1;      //developed power is proportional to sin_t
t=asin(sin_t);
E_r=E_r_max*complex(cos(-t),sin(-t));      //E_r is constant in magnitude
I_a=(V_a-E_r)/(%i*X_s);      //new phase current
I_a_max=sqrt((real(I_a)^2)+(imag(I_a)^2));
I_a_phi=atan(imag(I_a)/real(I_a));
PF=cos(I_a_phi);
disp('CASE c:')
disp('Phase current:')
disp(I_a_max,'peak value in amperes')
disp(I_a_phi*180/%pi,'phase angle in degrees')
disp('Voltage induced by rotor:')
disp(E_r_max,'peak value in volts')
disp(-t*180/%pi,'phase angle in degrees')
disp(t*180/%pi,'torque angle in degrees')
disp(PF,'power factor is')
