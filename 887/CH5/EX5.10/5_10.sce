clc
//ex5.10
R=100;
V_s_max=100;      //peak value of voltage
V_s_phi=0;      //phase angle of voltage
V_s=complex(V_s_max*cos(V_s_phi),V_s_max*sin(V_s_phi));      //phasor of voltage
Z_C=-%i*100;      //impedance of capacitance
I_s_max=1;      //peak value of current
I_s_phi=%pi/2;      //phase angle of current
I_s=complex(I_s_max*cos(I_s_phi),I_s_max*sin(I_s_phi));      //phasor of current
//zeroing sources to find Z_t i.e., thevenin impedance
Z_t=1/((1/R)+(1/Z_C));      //R and Z_C are in parallel combination
//apply short-circuit to find I_sc i.e., short-circuit current
I_R=abs(V_s)/R;      //ohm's law
I_sc=I_R-I_s;      //applying KCL
V_t=I_sc*Z_t;      //thevenin voltage
printf(" All the values in the textbook are approximated hence the values in this code differ from those of Textbook")
disp('FOR THEVENIN CIRCUIT:')
disp('thevenin voltage')
disp(abs(V_t),'peak value of voltage in volts')
//cos(t)=cos(t-180)
disp(atan(imag(V_t)/real(V_t))*180/%pi,'phase angle in degrees')
disp('thevenin resistance')
disp(abs(Z_t),'peak value of resistance in ohms')
disp(atan(imag(Z_t)/real(Z_t))*180/%pi,'phase angle in degrees')
disp('FOR NORTON CIRCUIT:')
disp('norton current')
disp(abs(I_sc),'peak value of norton current in amperes')
disp(atan(imag(I_sc)/real(I_sc))*180/%pi,'phase angle in degrees')
disp('resistance')
disp(abs(Z_t),'peak value of resistance in ohms')
disp(atan(imag(Z_t)/real(Z_t))*180/%pi,'phase angle in degrees')

