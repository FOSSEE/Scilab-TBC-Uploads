//ex5.7
phi_v=-%pi/2;      //angle of voltage source
phi_i=-3*%pi/4;      //angle of current source
phi=phi_v-phi_i;      //power angle
V_s_max=10;      //peak value of voltage source
V_s_phi=phi_v;      //phase angle of voltage source
R=100;
V_s=complex(V_s_max*cos(V_s_phi),V_s_max*sin(V_s_phi));      //phasor of voltage source
X_L=%i*100;
X_C=-%i*100;
I_max=0.1414;      //peak value of current
I_phi=phi_i;      //phase angle of current
I=complex(I_max*cos(I_phi),I_max*sin(I_phi));      //phasor of current
V_s_rms=V_s_max/sqrt(2);      //rms value of voltage
I_rms=I_max/sqrt(2);      //rms value of current
I_R_max=0.1;      //peak value
I_R_phi=-2*%pi;      //phase angle
I_R=complex(I_R_max*cos(I_R_phi),I_R_max*sin(I_R_phi));      //phasor of current
I_R_rms=I_R_max/sqrt(2);      //rms value
I_C_max=0.1;      //peak value
I_C_phi=-%pi/2;      //phase angle
I_C=complex(I_C_max*cos(I_C_phi),I_C_max*sin(I_C_phi));      //phasor current in capacitor
I_C_rms=I_C_max/sqrt(2);      //rms value
P=V_s_rms*I_rms*cos(phi);      //power by source
Q=V_s_rms*I_rms*sin(phi);      //reactive power by source
printf(" All the values in the textbook are approximated hence the values in this code differ from those of Textbook")
disp(P,'power delivered by source in watts')
disp(Q,'reactive power delivered by source in VARs')
//using complex power method
disp('Using complex power method:')
S=(1/2)*V_s*(I');      //complex power
P=real(S);
Q=imag(S);
disp(P,'power delivered by source in watts')
disp(Q,'reactive power delivered by source in VARs')
disp('we see that, in both the methods answers are the same')
Q_L=I_rms^2*X_L/%i;      //reactive power to inductance
Q_C=I_C_rms^2*X_C/%i;      //reactive power to capacitance
P_R=I_R_rms^2*R;      //power to resistance
disp(Q_L,'reactive power delivered to inductance in VARs')
disp(Q_C,'reactive power delivered to capacitance in VARs')
disp(P_R,'power delivered to resistance in watts')
